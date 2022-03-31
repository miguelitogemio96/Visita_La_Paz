<?php 
define('RUTA' , 'http://localhost/Visita_La_Paz/');
$bd_config = array(
    'basedatos' => 'visita_bd',
    'usuario' => 'root',
    'pass' => 'mysql'
);

$visita_config = array(
    'publicaciones_por_pagina' => '2',
    'productos_por_pagina' => '14',
    'servicios_por_pagina' => '14',
    'post_por_pagina' => '14',
    'post_por_pagina2' => '8',
    'carpeta_imagenes' => 'img/'
);

$visita_admin = array(
    'username' => 'Miguel10',
    'password' => '123456'
);

session_start();

?>