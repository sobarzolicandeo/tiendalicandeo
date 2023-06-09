<div class="row">
	<div class="box box-solid">
		<div class="box-header with-border">
			<h3 class="box-title"><b>Lo más visto hoy</b></h3>
		</div>
		<div class="box-body">
			<ul id="trending">
				<?php
				$now = date('Y-m-d');
				$conn = $pdo->open();

				$stmt = $conn->prepare("SELECT * FROM products WHERE date_view=:now ORDER BY counter DESC LIMIT 10");
				$stmt->execute(['now' => $now]);
				foreach ($stmt as $row) {
					echo "<li><a href='product.php?product=" . $row['slug'] . "'>" . $row['name'] . "</a></li>";
				}

				$pdo->close();
				?>
				<ul>
		</div>
	</div>
</div>

<!-- <div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>suscríbete</b></h3>
	  	</div>
	  	<div class="box-body">
	    	<p>Obtenga actualizaciones gratuitas sobre los últimos productos y descuentos, directamente en su bandeja de entrada.</p>
	    	<form method="POST" action="">
		    	<div class="input-group">
	                <input type="text" class="form-control">
	                <span class="input-group-btn">
	                    <button type="button" class="btn btn-info btn-flat"><i class="fa fa-envelope"></i> </button>
	                </span>
	            </div>
		    </form>
	  	</div>
	</div>
</div> -->

<div class="row">
	<div class='box box-solid'>
		<div class='box-header with-border'>
			<h3 class='box-title'><b>Síguenos en redes sociales</b></h3>
		</div>
		<div class='box-body'>
			<a class="btn btn-social-icon btn-facebook" href="https://web.facebook.com/profile.php?id=100077253904639"><i class="fa fa-facebook"></i></a>
			<a class="btn btn-social-icon btn-twitter" href="https://twitter.com/TiendaLicandeo"><i class="fa fa-twitter"></i></a>
			<a class="btn btn-social-icon btn-instagram" href="https://www.instagram.com/tienda_licandeo/"><i class="fa fa-instagram"></i></a>
			<!-- <a class="btn btn-social-icon btn-google"><i class="fa fa-google-plus"></i></a>
	    	<a class="btn btn-social-icon btn-linkedin" href=""><i class="fa fa-linkedin"></i></a> -->
		</div>
	</div>
</div>