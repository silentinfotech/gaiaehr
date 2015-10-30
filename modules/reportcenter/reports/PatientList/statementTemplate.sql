-- Set all the variables
-- SET @Provider = 6;
SET @Provider = null;
-- SET @StartDate = '2015-10-01';
SET @StartDate = null;
-- SET @EndDate = '2010-12-31';
SET @EndDate = null;
-- SET @ProblemCode = '195967001';
SET @ProblemCode = null;
SET @MedicationCode = null;
-- SET @MedicationCode = '731167';

-- Display all the patient fields
SELECT patient.* 
FROM patient

--
-- JOIN CLAUSE
--
-- Join the Active Problems
LEFT JOIN (
SELECT distinct(pid) AS pid, code as problem_code
	FROM patient_active_problems
    -- Filter by Patient Active Problems
    WHERE CASE 
		WHEN @ProblemCode IS NOT NULL 
		THEN patient_active_problems.code = @ProblemCode 
		ELSE 1=1 
	END
) patient_active_problems ON patient.pid = patient_active_problems.pid

-- Join the Encounters
LEFT JOIN (
SELECT distinct(pid) as pid, provider_uid, service_date
	FROM encounters
    -- Filter by Encounter Service Date
	WHERE CASE
		WHEN (@StartDate IS NOT NULL AND @EndDate IS NULL)
		THEN (encounters.service_date BETWEEN @StartDate AND NOW())
		ELSE 1=1
	END
	AND CASE
		WHEN (@StartDate IS NOT NULL AND @EndDate IS NOT NULL)
		THEN (encounters.service_date BETWEEN @StartDate AND @EndDate)
		ELSE 1=1
	END
	AND CASE
		WHEN (@StartDate IS NULL AND @EndDate IS NOT NULL)
		THEN (encounters.service_date BETWEEN @StartDate AND @EndDate)
		ELSE 1=1
	END
    -- Filter by Provider
	AND CASE 
		WHEN @Provider IS NOT NULL 
		THEN encounters.provider_uid = @Provider 
		ELSE 1=1 
	END
) encounters ON patient.pid = encounters.pid

-- Join Medications
LEFT JOIN (
SELECT distinct(pid) AS pid, CODE as medication_code
	FROM patient_medications
    -- Filter by Medication
    WHERE CASE
		WHEN @MedicationCode IS NOT NULL
		THEN patient_medications.code = @MedicationCode
    ELSE 1=1
END
) patient_medications ON patient.pid = patient_medications.pid

--
-- WHERE CLAUSE
--

-- Filter by Medication
WHERE CASE
	WHEN @MedicationCode IS NOT NULL
	THEN patient_medications.medication_code = @MedicationCode
	ELSE 1=1
END

-- Filter by Provider
AND CASE 
	WHEN @Provider IS NOT NULL 
	THEN encounters.provider_uid = @Provider 
	ELSE 1=1 
END

-- Filter by Encounter Service Date
AND CASE
	WHEN (@StartDate IS NOT NULL AND @EndDate IS NULL)
	THEN (encounters.service_date BETWEEN @StartDate AND NOW())
	ELSE 1=1
END
AND CASE
	WHEN (@StartDate IS NOT NULL AND @EndDate IS NOT NULL)
	THEN (encounters.service_date BETWEEN @StartDate AND @EndDate)
	ELSE 1=1
END
AND CASE
	WHEN (@StartDate IS NULL AND @EndDate IS NOT NULL)
	THEN (encounters.service_date BETWEEN @StartDate AND @EndDate)
	ELSE 1=1
END

-- Filter by Patient Active Problems
AND CASE 
	WHEN @ProblemCode IS NOT NULL 
	THEN patient_active_problems.problem_code = @ProblemCode 
	ELSE 1=1 
END