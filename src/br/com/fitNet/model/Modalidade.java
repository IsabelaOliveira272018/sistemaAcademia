package br.com.fitNet.model;

import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="modalidades")
public class Modalidade {
	
	@Id
	@GeneratedValue
	@Column(name="id_modalidade", nullable = false)
	private int idModalidade;
	
	@Column(name="descricao", nullable = false)
	private String descricao;
	
	@Column(name="valor")
	private double valor;
	
	@Column(name="status")
	private boolean statusAtivo;
	
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(name="dataCadastro")
	private Calendar dataCadastro;
	
	@Column(name="observacao")
	private String observacao;
	
	
	//private Acesso acesso;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(name="dataUltimaCadastro")
	private Calendar dataAlteracao;
	
	
	@Column(name="eliminada")
	private boolean eliminada;

	@Column(name="mod_id_usuario")
	private int idUsuarioCadastro;
	
	@Column(name="id_usuarioAlteracao")
	private int idUsuarioAlteracao;
	
	public Modalidade(){

		this.dataCadastro = new GregorianCalendar();
		this.dataAlteracao = new GregorianCalendar();
		//this.acesso = new Acesso();
		this.eliminada = false;
	}
	
	/*public Acesso getAcesso() {
		return acesso;
	}

	public void setAcesso(Acesso acesso) {
		this.acesso = acesso;
	}*/
	
	public int getIdModalidade() {
		return idModalidade;
	}
	public void setIdModalidade(int idModalidade) {
		this.idModalidade = idModalidade;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public boolean isEliminada() {
		return eliminada;
	}

	public void setEliminada(boolean eliminada) {
		this.eliminada = eliminada;
	}


	public boolean isStatusAtivo() {
		return statusAtivo;
	}

	public void setStatusAtivo(boolean statusAtivo) {
		this.statusAtivo = statusAtivo;
	}

	public Calendar getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(Calendar dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public Calendar getDataAlteracao() {
		return dataAlteracao;
	}

	public void setDataAlteracao(Calendar dataAlteracao) {
		this.dataAlteracao = dataAlteracao;
	}

	public int getIdUsuarioCadastro() {
		return idUsuarioCadastro;
	}

	public void setIdUsuarioCadastro(int idUsuarioCadastro) {
		this.idUsuarioCadastro = idUsuarioCadastro;
	}

	public int getIdUsuarioAlteracao() {
		return idUsuarioAlteracao;
	}

	public void setIdUsuarioAlteracao(int idUsuarioAlteracao) {
		this.idUsuarioAlteracao = idUsuarioAlteracao;
	}

	@Override
	public String toString() {
		return "Modalidade: " + idModalidade + " - " + descricao + " - Valor R$ " + valor;
	}
	
	
}
