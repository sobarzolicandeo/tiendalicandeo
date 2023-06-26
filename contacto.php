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
                                        <img src="images/carousel/image05.jpeg" alt="First slide">
                                    </div>
                                </div>
                                </a>
                            </div>
                            <br>
                            <h1>Detalles de Contacto</h1>
                            <h3>Contáctanos.</h3>
                            <h4>tiendalicandeo@gmail.com</h4>
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