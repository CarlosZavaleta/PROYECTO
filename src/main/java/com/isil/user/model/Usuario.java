package com.isil.user.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Table(name="user")
@Entity
public class Usuario {
	@Id
	@Column
	@GeneratedValue
	private int iduser;
	@Column
	private String dni;
	@Column
	private String nombres;
	@Column
	private String apellidos;
	@Column
	private String telefono;
	@Column
	private String estadoCivil;
	@Column
	private String correo;
	@Column
	private String pass;
	@Column
	private String perfil;
	public Usuario() {
		// TODO Auto-generated constructor stub
	}
	
	public Usuario(int iduser, String dni, String nombres, String apellidos, String telefono, String estadoCivil,
			String correo, String pass, String perfil) {
		super();
		this.iduser = iduser;
		this.dni = dni;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.estadoCivil = estadoCivil;
		this.correo = correo;
		this.pass = pass;
		this.perfil = perfil;
	}
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getEstadoCivil() {
		return estadoCivil;
	}
	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
	
	
}
