<?php
	include 'includes/session.php';
	$conn = $pdo->open();

	if(isset($_POST['login'])){
		
		$email = $_POST['email'];
		$password = $_POST['password'];

		try{

			$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM users WHERE email = :email");
			$stmt->execute(['email'=>$email]);
			$row = $stmt->fetch();
			if($row['numrows'] > 0){
				if($row['status']){
					if(password_verify($password, $row['password'])){
						if($row['type']){
							$_SESSION['admin'] = $row['id'];
						}
						else{
							$_SESSION['user'] = $row['id'];
						}
					}
					else{
						$_SESSION['error'] = 'Contraseña incorrecta';
					}
				}
				else{
					$_SESSION['error'] = 'Cuenta no activada';
				}
			}
			else{
				$_SESSION['error'] = 'Correo electrónico no encontrado';
			}
		}
		catch(PDOException $e){
			echo "Existe un problema con la conexión.: " . $e->getMessage();
		}

	}
	else{
		$_SESSION['error'] = 'Primero ingrese las credenciales de inicio de sesión';
	}

	$pdo->close();

	header('location: login.php');

?>