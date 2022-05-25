<?php
	if(!isset($_SESSION)){
		session_start();
	}

	require_once('conexao.php');
	$database = new Database();
	$db = $database->conectar();

	if (isset($_POST['titulo']) && isset($_POST['descricao']) && isset($_POST['inicio']) && isset($_POST['termino']) && isset($_POST['rec']) && isset($_POST['cor'])){
		
		$titulo = $_POST['titulo'];
		$descricao = $_POST['descricao'];
		$inicio = $_POST['inicio'];
		$termino = $_POST['termino'];
		$recorrencia = $_POST['rec'];
		$cor = $_POST['cor'];
		$id_usuario = $_SESSION['idUsuario'];
		

		$inicio= date('Y/m/d H:i:s', strtotime($inicio));
		$termino= date('Y/m/d H:i:s', strtotime($termino));

		
		$sql = "INSERT INTO eventos(fk_id_usuario, titulo, descricao, inicio, termino, recorrencia, cor) values ('$id_usuario', '$titulo', '$descricao', '$inicio', '$termino', '$recorrencia' , '$cor')";
		
		//$sql;
		
		
		$query = $db->prepare( $sql );
		if ($query == false) {
			print_r($db->errorInfo());
			die ('Erro ao carregar');
		}else{
			header("location: index.php");
		}
		
		$sth = $query->execute();
		if ($sth == false) {
			print_r($query->errorInfo());
			die ('Erro ao executar');
		}else{
			header("location: index.php");
		}

		



	}
	header('Location: '.$_SERVER['HTTP_REFERER']);	
?>