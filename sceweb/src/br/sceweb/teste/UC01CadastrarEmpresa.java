package br.sceweb.teste;

import static org.junit.Assert.assertEquals;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import br.sceweb.modelo.Empresa;
import br.sceweb.modelo.EmpresaDAO;

public class UC01CadastrarEmpresa {
	private static Empresa empresa;
	private static EmpresaDAO empresaDAO;
	
	/**
	 * estabelece as pré condições de teste
	 * @throws Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		empresa = new Empresa();
		empresaDAO = new EmpresaDAO();
		empresa.setNomeDaEmpresa("empresa x");
		empresa.setCnpj("89424232000180");
		empresa.setNomeFantasia("empresa x");
		empresa.setEndereco("rua taquari");
		empresa.setTelefone("2222");
	}
	
	@Before
	public  void excluiCNPJ(){
		empresaDAO.exclui("89424232000180");
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}
	/**
	 * verificar o comportamento do sistema na inclusão de uma empresa com sucesso
	 */
	@Test
	public void CT01UC01FBCadastrar_com_sucesso() {
		assertEquals(1, empresaDAO.adiciona(empresa));
	}

	/**
	 * verificar o comportamento do sistema na inclusão de uma empresa com cnpj invalido
	 */
	@Test(expected=RuntimeException.class)
	public void CT02UC01FBCadastrar_cnpj_invalido() {
		empresaDAO.adiciona(empresa);
		empresaDAO.adiciona(empresa);
	}

}
