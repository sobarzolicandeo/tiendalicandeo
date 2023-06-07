<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<body class="hold-transition skin-blue layout-top-nav">
    <div class="wrapper">

        <?php include 'includes/navbar.php'; ?>

        <div class="content-wrapper">
            <div class="container">

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-sm-8">
                            <?php
                            if (isset($_SESSION['error'])) {
                                echo "
	        					<div class='alert alert-danger'>
	        						" . $_SESSION['error'] . "
	        					</div>
	        				";
                                unset($_SESSION['error']);
                            }
                            ?>
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="images/carousel/image01.jpg" alt="First slide">
                                    </div>
                                </div>
                                </a>
                            </div>
                            <br>
                            <h1>Detalles de Contacto</h1>
                            <br>
                            <h3>Nos encontramos en:</h3>
                            <h4>Viña del mar, Chile.</h4>
                            <h3>Contáctanos por consultas relacionadas a ventas.</h3>
                            <h4>tiendalicandeo@gmail.com</h4>
                            <br><br>
                            <p>¡Te esperamos en Tienda Licandeo!</p>
                            <br>
                            <div>
                                <a class="btn btn-social-icon btn-facebook" href="https://web.facebook.com/profile.php?id=100077253904639"><i class="fa fa-facebook"></i></a>
                                <a class="btn btn-social-icon btn-twitter" href="https://twitter.com/TiendaLicandeo"><i class="fa fa-twitter"></i></a>
                                <a class="btn btn-social-icon btn-instagram" href="https://www.instagram.com/tienda_licandeo/"><i class="fa fa-instagram"></i></a>

                            </div>
                            <br>
                            <br>
                        </div>

                        <div class=" col-sm-3">
                            <?php include 'includes/sidebar.php'; ?>
                        </div>
                    </div>
                </section>

            </div>
        </div>

        <?php include 'includes/footer.php'; ?>
    </div>

    <?php include 'includes/scripts.php'; ?>
</body>

</html>