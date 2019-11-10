<?php
defined('BASEPATH') OR exit('No direct script access allowed');

#$route['users']='users/index';

$route['default_controller'] = 'pages/view';
$route['leaf_upload']='leaf_upload/view';
$route['cures/(:any)']='cures/view/$1';
$route['drugs/(:any)']='drugs/view/$1';
#$route['cures/(:any)']='cure/view/$1';
$route['randoms']='randoms/view';
$route['(:any)']='pages/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
