<?php 
require 'admin/config.php';
require 'funciones.php';

// VERIFICAR LA CONEXION A LA BASE DE DATOS
$conexion = conexion($bd_config);
if (!$conexion) {
    header('Location: error.php');
}



$posts = obtener_post_publicaciones($visita_config['publicaciones_por_pagina'],$conexion);
for ($i = 0; $i < $visita_config['publicaciones_por_pagina']; $i++) {
    $posts[$i]['tipo'] = obtener_tipo_prod_ser($posts[$i]['id_prod_ser'],$conexion);
}
// print_r($posts);

if(!$posts) {
    header('Location: error.php');
}

// $prueba = obtener_prod_ser(21, $conexion);
// print_r($prueba);
// echo "Hola".$prueba['tipo'];

// $tipo = obtener_tipo_prod_ser(3, $conexion);
// echo $tipo;

// $bd_config2 = array(
//     'basedatos' => 'visita_bd',
//     'usuario' => 'root',
//     'pass' => 'mysql'
// );
// print_r($bd_config2);
// $bd_config2['nuevo'] = "hola";
// print_r($bd_config2);

// $numero_paginas = numero_paginas($visita_config['publicaciones_por_pagina'], $conexion);
// echo $numero_paginas;

require 'views/index.view.php';
?>