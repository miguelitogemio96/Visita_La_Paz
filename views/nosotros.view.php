<?php require 'header.php';?>
    <nav class="navegacion">
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>index.php">Inicio</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>productos.php">Productos</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>servicios.php">Servicios</a>
        <a class="navegacion__enlace navegacion__enlace--activo" href="<?php echo RUTA; ?>nosotros.php">Nosotros</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>login.php">Iniciar Sesion</a>

    </nav>

    <main class="contenedor">
        <h1>Sobre Nosotros</h1>
        <div class="nosotros">
            <div class="nosotros__contenido">
                <p class="nosotros__contenido--primer_parrafo">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque perspiciatis exercitationem sint facilis repudiandae doloribus, perferendis, necessitatibus praesentium sed esse omnis dolorum laboriosam ex deserunt velit incidunt soluta, voluptatum nam. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sint omnis ut consequuntur provident quae reprehenderit soluta commodi saepe tempore ullam non sequi quis blanditiis a, quibusdam cupiditate necessitatibus temporibus veniam?
                </p>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis at pariatur cupiditate harum modi eaque rerum natus possimus sit magni! Eligendi laudantium harum pariatur hic beatae dolorum sunt sint tenetur!
                </p>
            </div>
            <img class="nosotros__imagen" src="<?php echo RUTA; ?>img/Logo_Umsa.JPG" alt="Imagen nosotros">
        </div>        
    </main>
    <section class="contenedor comprar">
        <h2 class="comprar__titulo">Porque Comprar con Nosotros?</h2>
        <div class="bloques">
            <div class="bloque">
                <img class="bloque__imagen" src="img/icono_1.png" alt="Icono 1">
                <h3 class="bloque__titulo">El Mejor Precio</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis at pariatur cupiditate
                </p>
            </div><!--.bloque-->
            <div class="bloque">
                <img class="bloque__imagen" src="img/icono_2.png" alt="Icono 2">
                <h3 class="bloque__titulo">Para Aventureros</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis at pariatur cupiditate
                </p>
            </div><!--.bloque-->
            <div class="bloque">
                <img class="bloque__imagen" src="img/icono_3.png" alt="Icono 3">
                <h3 class="bloque__titulo">Confort en Viajes</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis at pariatur cupiditate
                </p>
            </div><!--.bloque-->
            <div class="bloque">
                <img class="bloque__imagen" src="img/icono_4.png" alt="Icono 4">
                <h3 class="bloque__titulo">Seguridad</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis at pariatur cupiditate
                </p>
            </div><!--.bloque-->
        </div><!--.bloques-->
    </section>

    <footer class="footer">
        <p class="footer__texto">Visita La Paz - Todos los derechos reservados 2022.</p>
    </footer>
</body>
</html>