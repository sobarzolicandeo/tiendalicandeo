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
							<h1>Sobre nosotros</h1>
							<br>
							<p>Bienvenido a Tienda Licandeo, un espacio dedicado a fortalecer la cultura matera en nuestro país. Nos apasiona la Yerba Mate y todo lo que representa, por lo que nos propusimos investigar sobre esta cultura en Chile.
								Nos dimos cuenta de que muchas personas en nuestro país consumen la infusión en su día a día, especialmente en la región del sur. Además, muchos jóvenes están adoptando esta cultura que se ha transmitido de generación en generación.
								<br><br>
								Decidimos crear Tienda Licandeo para compartir nuestra experiencia y conocimiento sobre la cultura matera a través de las redes sociales.
								Queremos difundir la cultura, sus beneficios y valores, y fomentar la producción local de Yerba Mate de alta calidad.
								Únete a nosotros en nuestro viaje por la cultura matera y descubre la experiencia única y satisfactoria de disfrutar de la Yerba Mate.
							</p>
							<h3>¿De dónde viene la yerba Mate? ¿Es argentina, uruguaya, paraguaya o brasilera?</h3>
							<p>Los beneficios de la yerba mate fueron descubiertos 3000 años A.C.; pero su creciente popularidad se ha fortalecido a través de la historia por las innumerables propiedades que tiene y por su importancia cultural.

								El mate es la infusión predilecta en Argentina, Uruguay, Paraguay y algunas regiones de Brasil. Por su particular preparación y forma de compartirse; esta bebida es considerada incluso un patrimonio cultural en esos países; pero también gracias a sus incontables propiedades ha ido poco a poco cruzando fronteras hacia otros continentes y ganando un puesto en la lista de las mejores bebidas del mundo. Pero para entender su creciente significado y su trascendencia, es necesario conocer antes su historia y su origen
							</p>
							<h3>Primero que todo, ¿qué es el mate?</h3>
							<p>El mate, o la infusión de yerba mate, se prepara con las hojas del árbol Ilex Paraguariensis. Es una bebida natural originaria de Sudamérica que se consume de una manera especial, en un recipiente en forma de calabaza y con un tubo metálico llamado “bombilla”.

								Además, la yerba mate es considerada una superfood o súper alimento por su alto valor nutricional y la cantidad de propiedades beneficiosas para la salud del cuerpo y la mente. El mate es fuente de vitaminas, aminoácidos esenciales, minerales y antioxidantes (más que el té verde). Por su contenido de cafeína, estimula el sistema nervioso central proporcionando más energía y concentración. Por si fuera poco, estimula el metabolismo, mejora el rendimiento físico y está asociado a la prevención de algunas enfermedades.
							</p>
							<h3>La yerba de los guaraníes</h3>
							<p>Según el libro “Caá Porã: El Espíritu de la yerba mate” publicado por el Establecimiento Las Marías; el descubrimiento de la yerba mate puede atribuirse a la etnia de los Kaingang unos 3000 años a.C.; quienes consumían la Ilex Paraguariensis o árbol de yerba mate, originario de la selva paranaense en Argentina, Brasil y Paraguay.
								Sin embargo, fueron los guaraníes (indígenas nativos que estaban en algunos países de Sudamérica) quienes se dedicaron a explotar las ventajas de la yerba mate y quienes perfeccionaron los métodos de recolección y preparación, así como la forma de tomarlo, colocando las hojas en una calabaza con agua y sorbiendo el líquido mediante bombillas hechas de caña. Sabían además del valor nutritivo de la Ilex Paraguariensis; y se cree que en ocasiones masticaban directamente sus hojas. De hecho, la palabra “mate” viene del guaraní “Caa-mate”: “Caá” sería planta o hierba, y “mate” se refiere a la calabaza donde la bebían.
								Los guaraníes tienen incluso una leyenda sobre la yerba mate, que cuenta la historia de cuando sus ancestros recibieron la visita del dios Pa’i Shume, quien les enseñó cómo cosechar y preparar té con las hojas del árbol de Yerba Mate. “La más verde de todas las plantas” les traería salud, vitalidad y una larga vida. Según la leyenda, estos conocimientos fueron pasados por un misterioso chamán a la tribu donde se encontraba Jary y su padre enfermo; quien, al recibir el brebaje encontró nuevas fuerzas y vigor para seguir el camino de su pueblo.
								Por esto, además de apreciar las bondades nutricionales de la yerba mate, la veneraban como un regalo sagrado de los dioses con un significado especial y espiritual. Le rendían culto y creían que al beber mate, bebían el poder de la selva. Gracias a todo ese valor que los guaraníes atribuyeron a la yerba; se convirtió en una moneda de intercambio con otros pueblos prehispánicos: incas, charrúas, araucanos y pampas, quienes eventualmente adoptaron el mate en sus propias culturas.
							</p>
							<h3>Popularidad en la época colonial</h3>
							<p>Cuando los españoles colonizaron América del Sur, aprendieron de los guaraníes el uso y los beneficios del mate, por lo que pronto ganó una gran popularidad entre los colonizadores. Rápidamente, la yerba comenzó a llevarse desde su lugar de origen a todo el territorio que estaba bajo dominio español.
								Fueron sobretodo los misioneros jesuitas los responsables de extender el consumo de mate de una forma extraordinaria. Ellos reconocieron el enorme potencial económico que tendría su comercialización, y se propusieron investigar por qué la planta de yerba mate germinaba sólo en esta región del mundo, descubriendo así que eran las semillas pre-digeridas por los tucanes el secreto para el cultivo (Un descubrimiento que fue confirmado medio siglo después por el naturalista francés Aimé Bonpland).
								Los jesuitas españoles fueron pioneros en cultivar, transportar y comercializar el mate, aunque preferían tomar mate en saquitos y no con bombillas como los guaraníes. De allí que en algún momento llegó a conocerse a la yerba mate como el «té de los jesuitas».
							</p>
							<h3>El gaucho y su amor por el mate</h3>
							<p>A lo largo y ancho de toda Argentina, así como Uruguay, Paraguay, y el sur de Brasil, Chile y hasta Bolivia; se asentaron los “gauchos” (una especie de vaquero argentino), conocidos por su personalidad independiente, rural y pseudo nómada. Estos habilidosos jinetes habitaban las tierras que no eran utilizadas para fundar asentamientos o ciudades, cazando el ganado silvestre introducido por los colonizadores españoles y portugueses en las llanuras. Fueron los gauchos los pioneros en preparar el tradicional asado que hoy día representa una de las tradiciones más arraigadas en países como Uruguay y Argentina.
								En su contacto y convivencia con los pobladores autóctonos, los gauchos adoptaron el mate como parte de su idiosincrasia, a la par del asado, andar a caballo y su típica vestimenta de cuero. Tomaban mate caliente en grupo, para el desayuno, para el almuerzo, la cena y antes de dormir. Consumir mates se convirtió en una tradición gaucha que aún perdura: los vaqueros se reunían para socializar con otros gauchos y era común el agua calentándose en los fogones junto al asado de carne de vaca, y un mate circulando de mano en mano.
								Durante el largo proceso de la independencia de Argentina en el siglo XIX, la costumbre de tomar mate se fortaleció dentro del folclore nacional.
							</p>
							<h3>La yerba mate conquista Sudamérica</h3>
							<p>Aunque la industria de la yerba mate se origina en el pueblo guaraní, autóctono de la Selva Paranaense donde crece naturalmente la planta de yerba mate; su consumo se extendió en Sudamérica durante el Imperio español, haciendo que la industria de la yerba mate cobrara auge en todas las regiones del Río de la Plata.
								Para fines del siglo XVI ya los españoles consumían ampliamente la yerba mate, e impulsaron la industria yerbatera en Paraguay, convirtiéndolo en el principal centro de producción, hasta que conflictos territoriales favorecieron la extensión del mate a muchas ciudades coloniales de Suramérica. Con la caída de Paraguay en la guerra de la Triple Alianza, la región paraguaya de Mato Grosso do Sul pasa a ser parte de Brasil, y a finales del siglo XIX se empezaron a desarrollar allí plantaciones de yerba mate que convirtieron a Brasil en el principal productor.
								A comienzos del siglo XX, se establecieron las primeras plantaciones industriales en Argentina, en los puertos del Sur, Rosario y Buenos Aires. Sin embargo, Argentina tenía que importar la yerba desde Brasil y Paraguay a través del Río Paraná para satisfacer el consumo interno, hasta que el paisajista franco-argentino Carlos Thays desarrolló con éxito un sistema para la germinación de las semillas. Es así como se da inicio a la industria yerbatera argentina que consolidó al país como el mayor productor de yerba a nivel mundial.
								En Uruguay se han encontrado antiguos yerbatales y secaderos de yerba de los Guaraníes en las Sierras de Rocha. Sin embargo, aunque varios reportes apuntan que este país que tiene el mayor consumo per cápita del mundo, Uruguay no cuenta actualmente con una producción a escala industrial por motivos de mercado, sabor y de clima; aunque hay actualmente varias campañas para promover el cultivo nacional de yerba mate.
							</p>
							<h3>La yerba mate en la actualidad</h3>
							<p>La yerba mate se cultiva en Argentina, Paraguay y el sur de Brasil, donde las condiciones de terreno, temperatura y humedad son las ideales. Aunque se han hecho innumerables intentos para cultivar y producir la yerba mate en otras regiones en América del Norte, Asia y África, la Ilex paraguariensis se resiste a crecer fuera de las tierras de los guaraníes originarios.
								En la Argentina, el mate es la bebida más consumida después del agua, sin distinción de género, edad, ni clase social. Según el Instituto Nacional de la Yerba Mate, en el país se consume un promedio de 100 litros de mate al año, por persona. La costumbre del mate está presente en más del 90% de los hogares argentinos. Hay una gran diversidad de marcas en el mercado, siendo líder la empresa Las Marías (con su principal marca Taragüi) que además es la única que exporta a 40 países del mundo.
								Aunque Argentina es el mayor productor y exportador de la yerba con 54% del mercado mundial, actualmente el mate está ganando cada vez más popularidad fuera de los límites de América Latina. Hoy en día es posible disfrutar de las propiedades de esta infusión natural mucho más allá del continente: se puede pedir yerba mate online y recibir en toda Europa y en Estados Unidos. Existe incluso una variedad de productos tanto tradicionales como innovadores a base de yerba mate.
								Así mismo, tomar mate es una cuestión cultural, parte del estilo de vida de los países productores. En Argentina, se suele matear en rondas grupales como parte de un ritual social; y en Uruguay se toma mayormente de forma individual; pero a cualquier hora y en cualquier lugar no pueden faltar el termo y la yerba. Desde los guaraníes hasta los millennials, el significado esencial e irremplazable de cebar mate sigue tan -o más- vigente que nunca para los sudamericanos; y esto va mucho más allá de su función como bebida estimulante.
								La yerba mate es sin duda, uno de los descubrimientos más sorprendentes y placenteros que el continente sudamericano le ha ofrecido al mundo, y cada vez se descubren más beneficios que se suman a esta extensa lista.
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