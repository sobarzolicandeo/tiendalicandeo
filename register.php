<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

include 'includes/session.php';

if (isset($_POST['signup'])) {
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$repassword = $_POST['repassword'];

	$_SESSION['firstname'] = $firstname;
	$_SESSION['lastname'] = $lastname;
	$_SESSION['email'] = $email;

	if (!isset($_SESSION['captcha'])) {
		require('recaptcha/src/autoload.php');
		// $recaptcha = new \ReCaptcha\ReCaptcha('6LcxXmIaAAAAAFSY6wjaHDl65lmpTyXu-iBYBhp3', new \ReCaptcha\RequestMethod\SocketPost());
		$recaptcha = new \ReCaptcha\ReCaptcha('6LcxXmIaAAAAAFSY6wjaHDl65lmpTyXu-iBYBhp3');
		$resp = $recaptcha->setExpectedHostname($_SERVER['SERVER_NAME'])
			->verify($_POST['g-recaptcha-response'], $_SERVER['REMOTE_ADDR']);
		// $resp = $recaptcha->verify($_POST['g-recaptcha-response'], $_SERVER['REMOTE_ADDR']);

		if (!$resp->isSuccess()) {
			$_SESSION['error'] = 'Por favor responda reCAPTCHA correctamente';
			header('location: signup.php');
			exit();
		} else {
			$_SESSION['captcha'] = time() + (10 * 60);
		}
	}

	if ($password != $repassword) {
		$_SESSION['error'] = 'Las contraseñas no coinciden';
		header('location: signup.php');
	} else {
		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT COUNT(*) AS numrows FROM users WHERE email=:email");
		$stmt->execute(['email' => $email]);
		$row = $stmt->fetch();
		if ($row['numrows'] > 0) {
			$_SESSION['error'] = 'Correo electrónico ya existe';
			header('location: signup.php');
		} else {
			$now = date('Y-m-d');
			$password = password_hash($password, PASSWORD_DEFAULT);

			//generate code
			$set = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$code = substr(str_shuffle($set), 0, 12);

			try {
				$stmt = $conn->prepare("INSERT INTO users (email, password, firstname, lastname, activate_code, created_on) VALUES (:email, :password, :firstname, :lastname, :code, :now)");
				$stmt->execute(['email' => $email, 'password' => $password, 'firstname' => $firstname, 'lastname' => $lastname, 'code' => $code, 'now' => $now]);
				$userid = $conn->lastInsertId();

				$message = "
						<h2>Gracias por registrarte en Tienda Licandeo</h2>
						<p>Tu cuenta:</p>
						<p>Correo electrónico: " . $email . "</p>
						<p>Contraseña: " . $_POST['password'] . "</p>
						<p>Favor haz clic en el siguiente enlace para activar tu cuenta:</p>
						<a href='http://localhost/ecommerce/activate.php?code=" . $code . "&user=" . $userid . "'>Confirmar registro</a>
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
					$mail->addAddress($email);
					$mail->addReplyTo('tiendalicandeo@gmail.com');

					//Content
					$mail->isHTML(true);
					$mail->Subject = 'Tienda Licandeo - Confirmar registro';
					$mail->Body    = $message;

					$mail->send();

					unset($_SESSION['firstname']);
					unset($_SESSION['lastname']);
					unset($_SESSION['email']);

					$_SESSION['success'] = 'Cuenta creada. Revisa tu correo electrónico para activarla.';
					header('location: signup.php');
				} catch (Exception $e) {
					$_SESSION['error'] = 'No se pudo enviar el mensaje para activar cuenta. Correo electrónico:  ' . $mail->ErrorInfo;
					header('location: signup.php');
				}
			} catch (PDOException $e) {
				$_SESSION['error'] = $e->getMessage();
				header('location: register.php');
			}

			$pdo->close();
		}
	}
} else {
	$_SESSION['error'] = 'Favor ingresa los datos solicitados';
	header('location: signup.php');
}
