<?php 
require 'admin/config.php';
require 'funciones.php';

// VERIFICAR LA CONEXION A LA BASE DE DATOS
$conexion = conexion($bd_config);
if (!$conexion) {
    header('Location: error.php');
}

$id_producto = id_int_prod_ser($_GET['id']);
if(empty($id_producto)){
    header('Location: index.php');
}

// OBTENER EL PRODUCTO 
$producto = obtener_prod_ser_2($id_producto, $conexion);
if (!$producto) {
    header('Location: index.php');
}
// print_r($producto);

require 'views/producto.view.php';


?>