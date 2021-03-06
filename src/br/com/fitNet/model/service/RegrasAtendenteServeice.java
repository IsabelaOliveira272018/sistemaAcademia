package br.com.fitNet.model.service;

import java.sql.SQLException;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.fitNet.model.Atendente;
import br.com.fitNet.model.Endereco;
import br.com.fitNet.model.Funcionario;
import br.com.fitNet.model.exception.CPFInvalidoException;
import br.com.fitNet.model.exception.FuncionarioInvalidoException;
import br.com.fitNet.model.exception.NomeUsuarioInvalidoException;
import br.com.fitNet.model.percistence.Interfaces.IRepositorioFuncionario;
import br.com.fitNet.util.ValidarCPF;

@Service
public class RegrasAtendenteServeice {

	@Autowired
	IRepositorioFuncionario repFuncionarioDao;

	public void incluir(Atendente atendente)
			throws SQLException, FuncionarioInvalidoException, NomeUsuarioInvalidoException, CPFInvalidoException {

		if (!ValidarCPF.validarCpf(atendente.getCpf())) {
			throw new CPFInvalidoException("Numero de CPF invalido!");
		} else {
			if (atendente.getAcesso().getUsuario().equals("") || atendente.getAcesso().getSenha().equals("")
					|| atendente.getEmail().equals("") || atendente.getNome().equals("")) {
				throw new FuncionarioInvalidoException("Campos n�o podem ser vazio!");
			} else {
				Set<Funcionario> listaAtendentes = consultar();
				if (!listaAtendentes.isEmpty()) {
					for (Funcionario atendenteDaLista : listaAtendentes) {
						if (atendenteDaLista.getCpf().equals(atendente.getCpf())) {
							throw new FuncionarioInvalidoException("CPF j� cadastrado para outro Funcion�rio!");
						}
						if (atendenteDaLista.getAcesso().getUsuario().equals(atendente.getAcesso().getUsuario())) {
							throw new NomeUsuarioInvalidoException("Nome de us�rio j� existe. Tente outro!");
						}
					}
					repFuncionarioDao.incluir(atendente);

				} else {
					repFuncionarioDao.incluir(atendente);
				}
			}
		}
	}

	public void alterar(Atendente atendente) throws SQLException {

		repFuncionarioDao.alterar(atendente);

	}

	public Set<Atendente> consultarAtendentes() throws SQLException {
		return null;
	}
	
	public Set<Funcionario> consultar() throws SQLException {
		return repFuncionarioDao.consultar();
	}


	public Endereco consultarEndereco(String cep) {
		return null;

	}

/*
	public int consultarUltimoIdCliente() throws SQLException {
		return repClienteDao.consultarAutoIncremento();
	}

	public String carregarNumeroMatricula() throws SQLException {
		return repClienteDao.gerarNumeroMatricula();
	}

	public int carregarIdContrato() throws SQLException {
		return repClienteDao.consultarAutoIncrementoContrato();
	}

	public Cliente consultarClientePorId(int idCliente) throws SQLException {

		return repClienteDao.consultarClientePorId(idCliente);
	}

	public Set<Cliente> consultarClientesPorNome(String nomeCliente) throws SQLException {
		return repClienteDao.consultarClientePorNome(nomeCliente);

	}

	public Cliente consultarClientePorMatricula(int matricula) {
		return null;

	}

	public Set<Cliente> consultarClienteParaPagamento() {
		return null;

	}*/

}
