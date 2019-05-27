<?php

require_once 'AccesBD.php';

$testBD = new AccesBD();

$result = $testBD->getProduits();

error_log( json_encode($result) . "\n" , 3, "testModeleBD.log");
echo json_encode($result);
?>