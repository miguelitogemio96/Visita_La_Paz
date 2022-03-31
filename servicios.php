<?php 
require 'admin/config.php';
require 'funciones.php';

// VERIFICAR LA CONEXION A LA BASE DE DATOS
$conexion = conexion($bd_config);
if (!$conexion) {
    header('Location: error.php');
}

// OBTENER LOS DATOS DE LOS SERVICIOS DE LA BD
$posts = obtener_post_servicios($visita_config['servicios_por_pagina'],$conexion);
// print_r($posts);

if(!$posts) {
    header('Location: error.php');
}

require 'views/servicios.view.php';
?>