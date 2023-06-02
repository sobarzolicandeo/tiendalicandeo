<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	include 'includes/session.php';

	if(isset($_POST['reset'])){
		$email = $_POST['email'];

		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM users WHERE email=:email");
		$stmt->execute(['email'=>$email]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){
			//generar codigo
			$set='123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$code=substr(str_shuffle($set), 0, 15);
			try{
				$stmt = $conn->prepare("UPDATE users SET reset_code=:code WHERE id=:id");
				$stmt->execute(['code'=>$code, 'id'=>$row['id']]);
				
				$message = "
					<h2>Cambiar contrasena</h2>
					<p>Tu cuenta:</p>
					<p>Correo: ".$email."</p>
					<p>Favor haz clic en el siguiente enlace para restablecer tu contrasena:</p>
					<a href='http://localhost/tiendalicandeo/password_reset.php?code=".$code."&user=".$row['id']."'>Recuperar contrasena</a>
				";

				//Cargar phpmailer
	    		require 'vendor/autoload.php';

	    		$mail = new PHPMailer(true);                             
			    try {
			        //Configuración del servidor
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
			        
			        //Destinatario
			        $mail->addAddress($email);              
			        $mail->addReplyTo('tiendalicandeo@gmail.com');
			       
			        //Contenido
			        $mail->isHTML(true);                                  
			        $mail->Subject = 'Restablecer contrasena - Tienda Licandeo';
			        $mail->Body    = $message;

			        $mail->send();

			        $_SESSION['success'] = 'Enlace de restablecimiento de contraseña enviado';
			     
			    } 
			    catch (Exception $e) {
			        $_SESSION['error'] = 'No se pudo enviar el mensaje. Error de correo: '.$mail->ErrorInfo;
			    }
			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
		}
		else{
			$_SESSION['error'] = 'Correo electrónico no encontrado';
		}

		$pdo->close();

	}
	else{
		$_SESSION['error'] = 'Ingrese el correo electrónico asociado a la cuenta';
	}

	header('location: password_forgot.php');

?>