<pre> 
<?php

include ('../../models/Modelo.php');
include ('../../models/Usuario.php');
include ('../../libs/adodb5/adodb.inc.php');
$usuario= new Usuario();
$rs= $usuario->consulta_datos();
print_r($rs->GetRows());

?>
</pre>