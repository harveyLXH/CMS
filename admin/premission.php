<?php
error_reporting(E_ALL ^ E_NOTICE);
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('5','警告：权限不足，您不能管理权限设定！');
global $_tpl;
$_premission = new PremissionAction($_tpl);  //入口
$_premission->_action();
$_tpl->display('premission.tpl');
?>






