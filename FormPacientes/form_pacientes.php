<!DOCTYPE html>
	<html>
	<head>
		<title>Cadastro de Pacientes</title>
		<meta charset="utf-8" />
		<link href="form_pacientes.css" type="text/css" rel="stylesheet">
		</head>
	<body>

	<div class="container">
		<h2 id="titulo">Cadastro de Pacientes</h2>
	
		<form method="POST" action="cadpaciente.php">
		<fieldset>
		
		<div class="campo" id="campo">
			<label class="dados"><strong>CPF:</strong></label>
			<input type="text" name="cpf" id="cpf" required size="11" maxlength="14">
				<br>
			<label class="dados"><strong>Nome:</strong></label>
			<input type="text" name="nome" id="nome" required size="30" maxlength="30">
				<br>
			<label class="dados"><strong>Sobrenome:</strong></label>
			<input type="text" name="sobrenome" id="sobrenome" size="50" maxlength="50">
				<br>
			<label class="dados"><strong>Nome Social:</strong></label>
			<input type="text" name="nomesocial" id="nomesocial" size="30" maxlength="30">
		</div>

		<div class="combo" id="combo">
		<label for="sexo"><strong>Sexo:</strong></label>

		<select name="sexo" id="sexo">
  		<option selected disabled value="">Selecione</option>
  		<option value="feminino">Feminino</option>
  		<option value="masculino">Masculino</option>
  		
  		</select>
  		</div>

  		<div class="combo" id="combo">
		<label for="genero"><strong>Gênero:</strong></label>

		<select name="genero" id="genero">
  		<option selected disabled value="">Selecione</option>
  		<option value="transgenero">Transgênero</option>
  		<option value="cisgenero">Cisgênero</option>
  		<option value="naobinario">Não Binário</option>
  		
  		</select>
  		</div>
  		
  		<br>
  		<div class="campo" id="campo">
  			<label class="dados"><strong>Telefone:</strong></label>
  			<input type="text" name="telefone" id="telefone" required size="12" maxlength="12">
  			<br>
   		
   			<label class="dados"><strong>E-mail:</strong></label>
   			<input type="email" name="email" id="email" required size="50" maxlength="50">
   		</div>

	</fieldset>
	
	<fieldset>
		<div class="campo" id="campo">
			<label class="dados"><strong>Endereço:</strong></label>
			<input type="text" name="endereco" id="endereco" size="50" maxlength="50">
			<br>
		
			<label class="dados"><strong>Número:</strong></label>
			<input type="number" name="numero" id="numero" size="5" maxlength="5">
			<br>
		
			<label class="dados"><strong>Complemento:</strong></label>
			<input type="text" name="complemento" id="complemento" size="20" maxlength="20">
			<br>
		
			<label class="dados"><strong>Estado:</strong></label>
			<input type="text" name="estado" id="estado" size="30" maxlength="30">
			<br>
		
			<label class="dados"><strong>Cidade:</strong></label>
			<input type="cidade" name="cidade" id="cidade" size="30" maxlength="30">
			<br>
		
			<label class="dados"><strong>País:</strong></label>
			<input type="text" name="pais" id="pais" size="30" maxlength="30">
			<br>
	</div>
	</fieldset>
<h3 id="cadcontato"><strong>Cadastro de Contatos</strong></h3>
<fieldset>
		<div class="contato">
			<h4 id="contato">Contato 1</h4>
			<label><strong>Nome:</strong></label>
			<input type="text" name="nomecontato1" id="nomecontato1" size="40" maxlength="40">
			<label><strong>Telefone:</strong></label>
			<input type="text" name="telcontato1" id="telcontato1" size="12" maxlength="12">
		</div>

	<p>
		<div class="contato">
		<h4 id="contato">Contato 2</h4>
		<label><strong>Nome:</strong></label>
		<input type="text" name="nomecontato2" id="nomecontato2" size="40" maxlength="40">
		<label><strong>Telefone:</strong></label>
		<input type="text" name="telcontato2" id="telcontato2" size="12" maxlength="12">
	</p>

	<table>
		<td>
			<label><strong>Observações:</strong></label>
		</td>
		<td>
			<textarea class="obs" id="obs" name="observacao" id="observacao" rows="7" style="width: 363px;" maxlength="1000">
			</textarea>
		</td>
	</table>

</fieldset>

	<center><input type="submit" value="Salvar"></center>
</form>
</div>
<a href="form_pesquisar_pacientes%20.php">Pesquisar Pacientes</a>
</body>
</html>
