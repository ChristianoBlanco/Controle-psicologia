<?php
include_once "conexaocaopaciente.php";
?>

<!DOCTYPE html>
	<html>
	<head>
		<title>Pequisar Pacientes</title>
		<meta charset="utf-8" />
		<link href="form_pacientes.css" type="text/css" rel="stylesheet">
		</head>
	<body>

	<div class="container">
		<h2 id="titulo">Pequisar Pacientes</h2>
	
<form method="POST" action="">
	<fieldset>
		<div class="campo" id="campo">
			<label class="dados"><strong>CPF:</strong></label>
			<input type="text" name="cpf" id="cpf"  size="11" maxlength="14">
				<br>
			<label class="dados"><strong>Nome:</strong></label>
			<input type="text" name="nome" id="nome"  size="30" maxlength="30">
				<br>
		</div>

	</fieldset>

	<center><input name="SendPesqPaci" type="submit" value="Pesquisar"></center>
</form>
</div>

<?php
$SendPesqPaci = filter_input (INPUT_POST, 'SendPesqPaci', FILTER_SANITIZE_STRING);
if($SendPesqPaci)
{
	$cpf = filter_input (INPUT_POST, 'cpf', FILTER_SANITIZE_STRING);
	$nome = filter_input (INPUT_POST, 'nome', FILTER_SANITIZE_STRING);

$result_pesquisa = "SELECT * FROM cadpacientes WHERE cpf LIKE '%$cpf%' AND nome Like '%$nome%' ";
$resultado_pesquisa = mysqli_query($conexaopacientes, $result_pesquisa);
while($row_paciente = mysqli_fetch_assoc($resultado_pesquisa))
{
echo "CPF:" . $row_paciente['cpf'] . "<br>";
echo "Nome:" . $row_paciente['nome'] . "<br>";
echo "Sobrenome:" . $row_paciente['sobrenome'] . "<br>";
echo "Nome Social:" . $row_paciente['nomesocial'] . "<br>";
echo "Genero:" . $row_paciente['genero'] . "<br>";
echo "Telefone:" . $row_paciente['telefone'] . "<br>";
echo "E-mail:" . $row_paciente['email'] . "<br>";
echo "Endereço:" . $row_paciente['endereco'] . "<br>";
echo "Número:" . $row_paciente['numero'] . "<br>";
echo "Complemento:" . $row_paciente['complemento'] . "<br>";
echo "Estado:" . $row_paciente['estado'] . "<br>";
echo "Cidade:" . $row_paciente['cidade'] . "<br>";
echo "País:" . $row_paciente['pais'] . "<br>";
echo "Nome Contato 1:" . $row_paciente['nomecontato1'] . "<br>";
echo "Telefone Contato 1:" . $row_paciente['telcontato1'] . "<br>";
echo "Nome Contato 2:" . $row_paciente['nomecontato2'] . "<br>";
echo "Telefone Contato2:" . $row_paciente['telcontato2'] . "<br>";
echo "Observações:" . $row_paciente['observacao'] . "<br>";

}
}

?>
</body>
</html>
