<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
isset($_SESSION['admin']) ? Tool::alertLocation(null,'Location:admin.php') : Tool::alertLocation(null,'Location:admin_login.php');


?>