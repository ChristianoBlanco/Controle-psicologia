<?php

require_once("conexaocaopaciente.php");

$database = new Database();
	$db = $database->conectar();

echo $cpf = $_POST['cpf'];
$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome'];
$nomesocial = $_POST['nomesocial'];
$sexo = $_POST['sexo'];
$genero = $_POST['genero'];
$telefone = $_POST['telefone'];
$email = $_POST['email'];
$endereco = $_POST['endereco'];
$numero = $_POST['numero'];
$complemento = $_POST['complemento'];
$estado = $_POST['estado'];
$cidade = $_POST['cidade'];
$pais = $_POST['pais'];
$nomecontato1 = $_POST['nomecontato1'];
$telcontato1 = $_POST['telcontato1'];
$nomecontato2 = $_POST['nomecontato2'];
$telcontato2 = $_POST['telcontato2'];
$observacao = $_POST['observacao'];



	$sql = "INSERT INTO cadpacientes (cpf, nome, sobrenome, nomesocial, sexo, genero, telefone, email, endereco, numero, complemento,estado, cidade, pais, nomecontato1, telcontato1, nomecontato2, telcontato2, observacao)
	VALUES ('$cpf', '$nome', '$sobrenome', '$nomesocial', '$sexo', '$genero', '$telefone', '$email', '$endereco', '$numero', '$complemento', '$estado', '$cidade','$pais', '$nomecontato1', '$telcontato1', '$nomecontato2', '$telcontato2', '$observacao')";
		
	//$sql;
	
	
	$query = $db->prepare( $sql );
	if ($query == false) {
		print_r($db->errorInfo());
		die ('Erro ao carregar');
	}else{
		header("location: form_pacientes.php");
	}
	
	$sth = $query->execute();
	if ($sth == false) {
		print_r($query->errorInfo());
		die ('Erro ao executar');
	}else{
		header("location: form_pacientes.php");
	}	