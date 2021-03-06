<?php 
require 'header.php';
?>
    <nav class="navegacion">
        <a class="navegacion__enlace navegacion__enlace--activo" href="<?php echo RUTA; ?>index.php">Inicio</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>productos.php">Productos</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>servicios.php">Servicios</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>nosotros.php">Nosotros</a>
        <?php if (isset($_SESSION['usuario'])): ?>
            <a class="navegacion__enlace" href="<?php echo RUTA; ?>cerrar.php">Cerrar Sesion</a>
        <?php else: ?>
            <a class="navegacion__enlace" href="<?php echo RUTA; ?>login.php">Iniciar Sesion</a>
        <?php endif; ?>
    </nav>

    <h1>PUBLICACIONES</h1>
    <main class="contenedor flex">
        <?php foreach($posts as $post):?>
            <div class="publicacion sombra">
                <img src="<?php echo RUTA; ?>img/<?php echo $post['id_prod_ser']?>.jpg" alt="Imagen publicacion" class="publicacion__imagen">
                <div class="publicacion__contenido">
                    <div class="publicacion__contenido--detalles">
                        <h2 class="publicacion__titulo"><?php echo $post['titulo'];?></h2>
                        <p class="publicacion__contenido--texto">
                            <?php echo $post['des'];?>
                        </p>
                        <?php if ($post['tipo'] == 's'):?>
                            <a href="servicio.php?id=<?php echo $post['id_prod_ser'];?>" class="formulario">
                        <?php else: ?>                                    
                            <a href="producto.php?id=<?php echo $post['id_prod_ser'];?>" class="formulario">
                        <?php endif;?>
                            <input class="formulario__submit" type="submit" value="Mas Informacion">
                        </a>
                        
                    </div>
                    <div class="comentario">
                        <h3 class="comentario__label">Comentarios:</h3>
                        <?php foreach(obtener_comentarios($post['id_pub'], $conexion) as $comentario):?>
                        <div class="comentario__usuario">
                            <h4 class="comentario__usuario--username"><?php echo $comentario['username']; ?></h4>
                            <p class="comentario__usuario--texto"><?php echo $comentario['des']; ?></p>
                        </div>
                        <?php endforeach; ?>
                        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" class="formulario__comentario" method="POST">
                            <input type="text" class="comentario__input" id="comentario" name="comentario" placeholder="Deja tu comentario...">
                            <input class="comentario__submit" type="submit" value="Comentar">
                            <input type="hidden" id="id_post" name="id_post" value="<?php echo $post['id_pub']; ?>">
                            <input type="hidden" id="pagina" name="pagina" value="<?php echo pagina_actual(); ?>">
                        </form>
                    </div>
                </div>
            </div>
            <!-- .publicacion -->
            
        <?php endforeach; ?>

    </main>

    <?php require('paginacion.php');?>

    <footer class="footer">
        <p class="footer__texto">Visita La Paz - Todos los derechos reservados 2022.</p>
    </footer>
</body>
</html>