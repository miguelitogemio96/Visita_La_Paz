<?php 
require 'admin/config.php';
require 'funciones.php';

// VERIFICAR LA CONEXION A LA BASE DE DATOS
$conexion = conexion($bd_config);
if (!$conexion) {
    header('Location: error.php');
}

$id_servicio = id_int_prod_ser($_GET['id']);
if(empty($id_servicio)){
    header('Location: index.php');
}

// OBTENER EL servicio 
$servicio = obtener_prod_ser_2($id_servicio, $conexion);
if (!$servicio) {
    header('Location: index.php');
}
// print_r($servicio);

require 'views/servicio.view.php';


?>