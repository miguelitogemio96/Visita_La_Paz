<?php 
require 'admin/config.php';
require 'funciones.php';

// VERIFICAR LA CONEXION A LA BASE DE DATOS
$conexion = conexion($bd_config);
if (!$conexion) {
    header('Location: error.php');
}

$posts = obtener_post_productos($visita_config['productos_por_pagina'],$conexion);
// print_r($posts);

if(!$posts) {
    header('Location: error.php');
}

require 'views/productos.view.php';
?>