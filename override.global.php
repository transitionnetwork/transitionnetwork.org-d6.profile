<?php // OVERRIDE global settings.php

/**
 * @file override.settings.php
 *
 * Sets up some key Dev/Stage/Test/Prod behaviours
 *
 * Works with
 * -- Session 443
 * -- Environment Indicator
 * -- Reroute Email
 */
 
/* ---------- PERFORMANCE ---------- */
/**
 * Detect requests for '*/feed' urls on HTTPS, redirect to HTTP.
 */
if ($conf['https'] && preg_match("/\/feed$|^\/blogs\/feed\/.*$/", $_SERVER['REQUEST_URI'])) {
    header("HTTP/1.1 301 Moved Permanently");
    // Send user to same URL on HTTP.
    header("Location: " . str_replace('https://', 'http://', $base_url) . $_SERVER['REQUEST_URI']);
}


/* ------------ DEFAULTS ------------ */

/**
 * Enforce secure cookies handling
 *
 * @see: http://drupal.org/project/session443
 */
if (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
  ini_set('session.cookie_secure', 1);
}

/**
 * Reroute Email 6.x-1.x-dev switch means we'll always reroute (if module enabled).
 *
 * @see: http://drupal.org/project/reroute_email
 */
$conf['reroute_email_enable'] = 1;
$conf['reroute_email_address'] = "transition-dev@email-lists.org";

/**
 * Environment Indicator to remind users what site they're looking at (if module enabled).
 *
 * @see: http://drupal.org/project/environment_indicator
 */
$conf['environment_indicator_text'] = 'UNKNOWN SERVER!';
$conf['environment_indicator_color'] = 'red';
$conf['environment_indicator_enabled'] = TRUE;


/**
 * Allows server environment settings to be changed on a per site basis
 * from defaults above based on environment type.
 *
 * $environment_name must start with 'Production', 'Testing' or 
 * 'Development' (default) else no changes will be made. Any other names
 * can be added after a space.
 * 
 * e.g. 'Testing - TN.org commerce'
 */
function puffin_server_override_settings_set_environment($environment_name = 'Development') {
  global $conf;
  // use full string for Environment Indicator module label.
  $conf['environment_indicator_text'] = $environment_name;
  // use string before space so we know which environment to choose.
  $env_type = explode(' ', $environment_name);
  // set our own $_SERVER variable for other uses if needs be
  $_SERVER['_TN_ENVIRONMENT'] = $env_type;

  switch ($env_type[0]) {
    case 'Production':
      $conf['reroute_email_enable'] = 0;
      $conf['environment_indicator_color'] = '#D0E7B4';
      $conf['environment_indicator_enabled'] = TRUE;
      break;
    case 'Staging':
      $conf['reroute_email_enable'] = 1;
      $conf['environment_indicator_color'] = 'orange';
      $conf['environment_indicator_enabled'] = TRUE;
      break;
    case 'Development':
      $conf['reroute_email_enable'] = 1;
      $conf['environment_indicator_color'] = 'dark-red';
      $conf['environment_indicator_enabled'] = TRUE;
      break;
  }
}
