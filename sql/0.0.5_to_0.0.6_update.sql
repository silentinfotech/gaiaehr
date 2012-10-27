SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
CREATE TABLE IF NOT EXISTS `globals` (
  `gl_name` varchar(63) NOT NULL,
  `gl_index` int(11) NOT NULL DEFAULT '0',
  `gl_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gl_name`,`gl_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `globals`
--

INSERT INTO `globals` (`gl_name`, `gl_index`, `gl_value`) VALUES
('activate_ccr_ccd_report', 0, '0'),
('advance_directives_warning', 0, '0'),
('atna_audit_cacert', 0, ''),
('atna_audit_host', 0, ''),
('atna_audit_localcert', 0, ''),
('atna_audit_port', 0, '6514'),
('audit_events_backup', 0, '0'),
('audit_events_order', 0, '0'),
('audit_events_other', 0, '0'),
('audit_events_patient-record', 0, ''),
('audit_events_query', 0, '0'),
('audit_events_scheduling', 0, '0'),
('audit_events_security-administration', 0, ''),
('auto_create_new_encounters', 0, ''),
('backup_log_dir', 0, 'C:/windows/temp'),
('calendar_appt_style', 0, ''),
('calendar_interval', 0, ''),
('certificate_authority_crt', 0, ''),
('certificate_authority_key', 0, ''),
('client_certificate_valid_in_days', 0, '365'),
('configuration_import_export', 0, '0'),
('country_data_type', 0, '26'),
('country_list', 0, 'country'),
('css_header', 0, 'ext-all-gray.css'),
('currency_decimals', 0, '2'),
('currency_dec_point', 0, '.'),
('currency_thousands_sep', 0, ','),
('date_display_format', 0, 'Y-m-d'),
('default_chief_complaint', 0, ''),
('default_new_encounter_form', 0, ''),
('default_top_pane', 0, 'app/dashboard/dashboard.ejs.php'),
('disable_calendar', 0, ''),
('disable_chart_tracker', 0, ''),
('disable_deprecated_metrics_form', 0, '0'),
('disable_immunizations', 0, '0'),
('disable_non_default_groups', 0, '0'),
('disable_phpmyadmin_link', 0, ''),
('disable_prescriptions', 0, '0'),
('discount_by_money', 0, '0'),
('docs_see_entire_calendar', 0, ''),
('EMAIL_METHOD', 0, 'SMTP'),
('EMAIL_NOTIFICATION_HOUR', 0, '50'),
('Emergency_Login_email_id', 0, ''),
('enable_atna_audit', 0, '0'),
('enable_auditlog', 0, '0'),
('enable_hylafax', 0, '0'),
('enable_scanner', 0, '0'),
('force_billing_widget_open', 0, '0'),
('fullname', 0, '1'),
('full_new_patient_form', 0, '1'),
('gbl_currency_symbol', 0, '$'),
('gbl_mask_invoice_number', 0, ''),
('gbl_mask_patient_id', 0, ''),
('gbl_mask_product_id', 0, ''),
('gbl_nav_area_width', 0, '200'),
('gbl_visit_referral_source', 0, '0'),
('hylafax_basedir', 0, '/var/spool/fax'),
('hylafax_enscript', 0, 'enscript -M Letter -B -e^ --margins=36:36:36:36'),
('hylafax_server', 0, 'localhost'),
('ignore_pnotes_authorization', 0, '0'),
('inhouse_pharmacy', 0, ''),
('is_client_ssl_enabled', 0, '0'),
('language_default', 0, 'en_US'),
('language_menu_showall', 0, '0'),
('main_navigation_menu_left', 0, 'west'),
('MedicareReferrerIsRenderer', 0, '0'),
('mitosehr_name', 0, 'MitosEHR :: DEMO'),
('mysql_bin_dir', 0, 'C:/xampp/mysql/bin'),
('omit_employers', 0, '0'),
('online_support_link', 0, 'http://mitosehr.org/projects/mitosehr001'),
('password_expiration_days', 0, '0'),
('password_grace_time', 0, '0'),
('password_history', 0, '0'),
('patient_id_category_name', 0, 'Patient ID card'),
('patient_photo_category_name', 0, 'Patient Photograph'),
('patient_search_results_style', 0, '0'),
('perl_bin_dir', 0, 'C:/xampp/perl/bin'),
('phone_country_code', 0, '1'),
('post_to_date_benchmark', 0, '2011-01-13'),
('practice_return_email_path', 0, ''),
('print_command', 0, 'lpr -P HPLaserjet6P -o cpi=10 -o lpi=6 -o page-left=72 -o page-top=72'),
('restrict_user_facility', 0, '0'),
('scanner_output_directory', 0, '/mnt/scan_docs'),
('schedule_end', 0, ''),
('schedule_start', 0, ''),
('secure_password', 0, '0'),
('select_multi_providers', 0, '0'),
('set_facility_cookie', 0, '0'),
('simplified_copay', 0, '0'),
('simplified_demographics', 0, '0'),
('simplified_prescriptions', 0, '0'),
('SMS_GATEWAY_APIKEY', 0, ''),
('SMS_GATEWAY_PASSWORD', 0, ''),
('SMS_GATEWAY_USENAME', 0, ''),
('SMS_NOTIFICATION_HOUR', 0, '50'),
('SMTP_HOST', 0, 'localhost'),
('SMTP_PASS', 0, ''),
('SMTP_PORT', 0, '25'),
('SMTP_USER', 0, ''),
('specific_application', 0, ''),
('state_custom_addlist_widget', 0, '0'),
('state_data_type', 0, '26'),
('state_list', 0, 'state'),
('support_encounter_claims', 0, '0'),
('temporary_files_dir', 0, 'C:/windows/temp'),
('timeout', 0, '7200'),
('time_display_format', 0, 'g:i a'),
('translate_appt_categories', 0, '0'),
('translate_document_categories', 0, '0'),
('translate_form_titles', 0, '0'),
('translate_gacl_groups', 0, '0'),
('translate_layout', 0, '0'),
('translate_lists', 0, '0'),
('units_of_measurement', 0, '1'),
('use_charges_panel', 0, '0'),
('autosave', 0, '1');