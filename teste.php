<?php
echo $_POST["linkNovo"];
require_once(__DIR__.'/model/DB/variaveis.php');

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Teste ajax jquery tutsmais</title>
<link rel="stylesheet" href="<?php echo DIRPAGE.'public/js/fullcalendar/lib/main.min.css';?>">
<link rel="stylesheet" href="<?php echo DIRPAGE.'public/css/calendario.css';?>">
</head>
 
<body>
    <div class="calendar"></div>

    
<script src="<?php echo DIRPAGE.'public/js/fullcalendar/lib/main.min.js'; ?>"></script>
<script src="<?php echo DIRPAGE.'public/js/calendario.js'; ?>"></script>
</body>
</html>