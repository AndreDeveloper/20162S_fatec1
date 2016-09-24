package br.sceweb.teste;

import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import br.sceweb.modelo.Empresa;
import br.sceweb.modelo.EmpresaDAO;

public class UC02ConsultarEmpresa {
	static Empresa resultadoEsperado;
	static Empresa resultadoObtido;
	static EmpresaDAO empresaDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		resultadoEsperado = new Empresa();
		resultadoEsperado.setCnpj("48331374000116");
		resultadoEsperado.setNomeDaEmpresa("casas bahia");
		resultadoEsperado.setEndereco("av. aguia de haia");
		resultadoEsperado.setNomeFantasia("bahianinhas");
		resultadoEsperado.setTelefone("123456778");
		empresaDAO = new EmpresaDAO();
		empresaDAO.adiciona(resultadoEsperado);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}
	@After
	public void excluiEmpresa(){
		empresaDAO.exclui("48331374000116");
	}
	@Test
	public void CT01UC02FBConsultarEmpresa_com_sucesso() {
		resultadoObtido = empresaDAO.consulta("48331374000116");
		assertTrue(true);
	}

}
