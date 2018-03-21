<?php
// MySQL Credentials
$db_host = 'localhost';
$db_user = 'root';     // Enter your MySQL username
$db_pass = '';     // Enter your MySQL password
$db_name = 'ing_scadob';
$db_table = 'raw_logs';

// User credentials for Browser login
//$auth_user = 'scadob';    //Sample: 'torque'
//$auth_pass = 'scadob';    //Sample: 'open'

//If you want to restrict access to upload_data.php, 
// either enter your torque ID as shown in the torque app, 
// or enter the hashed ID as it can found in the uploaded data.
//The hash is simply MD5(ID).
//Leave empty to allow any torque app to upload data to this server.
//$torque_id = '358957064018699';        //Sample: 358957064018699
//$torque_id_hash = '8df0b81098f8f5574f6b509d901b3e22';   //Sample: 58b9b9268acaef64ac6a80b0543357e6
//Just 'settings', could be moved to a config file later.
$source_is_fahrenheit = false;
$use_fahrenheit = false;

$source_is_miles = false;
$use_miles = false;

$hide_empty_variables = true;
$show_session_length = true;

?>
