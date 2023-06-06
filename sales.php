<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

include 'includes/session.php';

if (isset($_GET['pay'])) {
	$payid = $_GET['pay'];
	$date = date('Y-m-d');

	$conn = $pdo->open();

	try {

		$stmt = $conn->prepare("INSERT INTO sales (user_id, pay_id, sales_date) VALUES (:user_id, :pay_id, :sales_date)");
		$stmt->execute(['user_id' => $user['id'], 'pay_id' => $payid, 'sales_date' => $date]);
		$salesid = $conn->lastInsertId();

		try {
			$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products ON products.id=cart.product_id WHERE user_id=:user_id");
			$stmt->execute(['user_id' => $user['id']]);

			foreach ($stmt as $row) {
				$stmt = $conn->prepare("INSERT INTO details (sales_id, product_id, quantity) VALUES (:sales_id, :product_id, :quantity)");
				$stmt->execute(['sales_id' => $salesid, 'product_id' => $row['product_id'], 'quantity' => $row['quantity']]);
			}

			$stmt = $conn->prepare("DELETE FROM cart WHERE user_id=:user_id");
			$stmt->execute(['user_id' => $user['id']]);

			$message = "
						<h2>Hemos confirmado el pago de tu compra</h2>
						<h3>y tu pedido ya esta en proceso</h3>
						<p>El numero de transaccion es: " . $payid . "</p>
						<p>Puedes acceder al detalle de tus compras desde el <a href='http://localhost/tiendalicandeo/profile.php'>perfil de tu cuenta</a>.</p
						<h3>Pronto nos pondremos en contacto para coordinar el envío.</h3>
						<p>No te olvides de seguir nuestras redes sociales:</p>
						<a href='https://www.instagram.com/tienda_licandeo/'>Instagram</a>
						<br>
						<a href='https://twitter.com/TiendaLicandeo'>Twitter</a>
						
						<p>Gracias por comprar en Tienda Licandeo</p>
					";

			//Load phpmailer
			require 'vendor/autoload.php';

			$mail = new PHPMailer(true);
			try {
				//Server settings
				$mail->isSMTP();
				$mail->Host = 'smtp.gmail.com';
				$mail->SMTPAuth = true;
				$mail->Username = 'tiendalicandeo@gmail.com';
				$mail->Password = 'wujopymnxubukcex';
				$mail->SMTPOptions = array(
					'ssl' => array(
						'verify_peer' => false,
						'verify_peer_name' => false,
						'allow_self_signed' => true
					)
				);
				$mail->SMTPSecure = 'ssl';
				$mail->Port = 465;

				$mail->setFrom('tiendalicandeo@gmail.com');

				//Recipients
				$mail->addAddress($user['email']);
				$mail->addReplyTo('tiendalicandeo@gmail.com');

				//Content
				$mail->isHTML(true);
				$mail->Subject = 'Tienda Licandeo - Pago confirmado';
				$mail->Body    = $message;

				$mail->send();

				$_SESSION['success'] = 'Pago confirmado';
			} catch (Exception $e) {
				$_SESSION['error'] = 'No se pudo enviar mensaje de confirmación de pago. Correo electrónico:  ' . $mail->ErrorInfo;
			}
			$_SESSION['success'] = 'Transacción realizada con éxito. Muchas gracias.';
		} catch (PDOException $e) {
			$_SESSION['error'] = $e->getMessage();
		}
	} catch (PDOException $e) {
		$_SESSION['error'] = $e->getMessage();
	}

	$pdo->close();
}

header('location: profile.php');
