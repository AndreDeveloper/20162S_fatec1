<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
            label {
                font: normal 12px courier !important;
            }
</style>	
<title>Manter Empresa</title>
<link rel="stylesheet" type="text/css" href="/sceweb/CSS/Formato.css">
<script type="text/javascript" language="javascript">
	
	function incluir() {
		document.formEmpresaIncluir.acao.value = "IncluirEmpresa";
		document.formEmpresaIncluir.submit();
	}
	function consultar() {
		document.formEmpresaIncluir.acao.value = "ConsultarEmpresa";
		document.formEmpresaIncluir.submit();
	}
	function excluir() {
		history.go(-1)
	}
</script>
</head>
<body class="container">
	<div class="jumbotron">
	<jsp:include page="Cabecalho.jsp" />
	</div>
	<div id="principal">
		<div id="titulo">
			<h3>Mantem Empresas</h3>
		</div>
		<hr>
		<div id="formulario2">

			<form name="formEmpresaIncluir" action="/sceweb/ServletControle" class="table-responsive" method="post">
				<table id="tabcampos">
					<tr>
						<td><label> Nome:</label></td>
						<td><input id="campo" type="text" size="50" name="txtNomeDaEmpresa"
							value=""></td>
					</tr>
					<tr>
						<td><label> CNPJ:</label></td>
						<td><input id="campo"  type="text" name="txtCNPJ"
							value=""></td>
					</tr>
					<tr>
						<td><label> Nome Fantasia:</label></td>
						<td><input  id="campo" type="text" name="txtNomeFantasia"
							value=""></td>
					</tr>
					<tr>
						<td><label> Endereço:</label></td>
						<td><input id="campo" type="text" name="txtEndereco"
							value=""></td>
					</tr>
					<tr>
						<td><label> Telefone:</label></td>
						<td><input  id="campo" type="text" name="txtTelefone"
							value=""></td>
					</tr>
					<tr>
						<td><label> Responsável pelo Estágio:</label></td>
						<td><input id="campo" type="text" name="txtResponsavel"
							value=""></td>
					</tr>
					<tr>
						<td><label> Telefone do Responsável pelo Estágio:</label></td>
						<td><input  id="campo" type="text" name="txtTelefoneResponsavel"
							value=""></td>
					</tr>
					<tr>
						<td><label> Setor:</label></td>
						<td><input id="campo" type="text" name="txtSetor"
							value=""></td>
					</tr>
					<tr>
						<td><label> e-mail:</label></td>
						<td><input  id="campo" type="text" name="txtEmail"
							value=""></td>
					</tr>
					
					<tr>
						<td colspan=2 id="botoes" align="center">
						<input id="botao" type=button name=btnIncluir onclick=incluir() value=Incluir>
						<input id="botao" type=reset name=btnConsultar onclick=consultar() value=Consultar>
					    <input id="botao" type=button name=btnExcluir onclick=excluir() value=Excluir>
					    </td>
					</tr>
				</table>
				<input type="hidden" name="acao" value="">
				<input type="hidden" name="menu" value="principal">
				<%	String msg = (String) request.getAttribute("msg"); 
					if(msg == null)
						msg="";
				%>
				<label><%=msg%></label>
			</form>
		</div>
	</div>
	<jsp:include page="Rodape.jsp" />
</body>
</html>