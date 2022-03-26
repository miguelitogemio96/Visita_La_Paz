<?php require 'header.php';?>
    <nav class="navegacion">
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>index.php">Inicio</a>
        <a class="navegacion__enlace navegacion__enlace--activo" href="<?php echo RUTA; ?>productos.php">Productos</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>servicios.php">Servicios</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>nosotros.php">Nosotros</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>login.php">Iniciar Sesion</a>

    </nav>

    <main class="contenedor">
        <h1>Productos</h1>
        <div class="grid">
            <?php foreach($posts as $producto):?>
                <div class="paquete">
                    <a href="<?php echo RUTA; ?>producto.php?id=<?php echo $producto['id_prod_ser'] ?>">
                        <img class="paquete__imagen" src="<?php echo RUTA; ?>img/<?php echo $producto['id_prod_ser']?>.jpg" alt="Imagen Paquete">
                        <div class="paquete__informacion">
                            <p class="paquete__nombre"><?php echo $producto['nombre'] ?></p>
                            <p class="paquete__precio">Bs. <?php echo $producto['costo'] ?></p>
                        </div>
                    </a>                 
                </div> <!--.paquete-->
            <?php endforeach;?>
            
            <div class="grafico grafico--ciclismo"></div>
            <div class="grafico grafico--caminata"></div>
        </div> <!--.grid-->
    </main>


    <footer class="footer">
        <p class="footer__texto">Visita La Paz - Todos los derechos reservados 2022.</p>
    </footer>
</body>
</html>