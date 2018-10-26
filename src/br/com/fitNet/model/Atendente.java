package br.com.fitNet.model;

import java.util.GregorianCalendar;

public class Atendente extends Funcionario{
	
	public Atendente(){
		setCrn("");
		setEndereco(new Endereco());
		setAcesso(new Acesso());
		setDataAdmissao(new GregorianCalendar());
		setDataCadastro(new GregorianCalendar());
		setDataAlteracao(new GregorianCalendar());
		setDataNascimento(new GregorianCalendar());
	}

}
