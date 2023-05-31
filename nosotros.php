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
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/carousel/mate1.jpg" alt="First slide">
		                  </div>
						  <div class="item">
           					<img src="images/carousel/imagen7.jpg" alt="Second slide">
        				  </div>
						  <div class="item">
           					<img src="images/carousel/imagen2.jpg" alt="Second slide">
        				  </div>						  
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
                    <br>
                    <br>
                        
                    
		            <h1>Sobre Nosotros</h1>
                    
                    <br>
                    <br>
                    <p>Bienvenido a Tienda Licandeo, un espacio dedicado a fortalecer la cultura matera en nuestro país. Nos apasiona la Yerba Mate y todo lo que representa, por lo que nos propusimos investigar sobre esta cultura en Chile.
                    Nos dimos cuenta de que muchas personas en nuestro país consumen la infusión en su día a día, especialmente en la región del sur. Además, muchos jóvenes están adoptando esta cultura que se ha transmitido de generación en generación.
                    Decidimos crear Tienda Licandeo para compartir nuestra experiencia y conocimiento sobre la cultura matera a través de las redes sociales.
                    Queremos difundir la cultura, sus beneficios y valores, y fomentar la producción local de Yerba Mate de alta calidad.
                    Únete a nosotros en nuestro viaje por la cultura matera y descubre la experiencia única y satisfactoria de disfrutar de la Yerba Mate.
                    </p>
                    <br>    
                    <p>¡Te esperamos en Tienda Licandeo!</p>
                    <br>
                    <br>
                    <br>
	        	</div>
                
	        	<div class="col-sm-3">
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