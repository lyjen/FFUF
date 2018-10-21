<?php

use rueckgrat\debug\Debugger,
    rueckgrat\MVCApplication,
    rueckgrat\Request,
    rueckgrat\security\Input;

require './config/config.php';
require 'vendor/autoload.php';

ob_start('ob_gzhandler');

Debugger::appStart();

$app = new MVCApplication(new Request(Input::get('c'), Input::get('m')));
$app->handleRequest();

Debugger::appEnd();
ob_end_flush();
