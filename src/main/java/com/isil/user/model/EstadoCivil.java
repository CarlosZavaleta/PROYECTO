package com.isil.user.model;

public class EstadoCivil {
private int id;
private String descripcion;
public EstadoCivil() {
	// TODO Auto-generated constructor stub
}
public EstadoCivil(int id, String descripcion) {
	super();
	this.id = id;
	this.descripcion = descripcion;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDescripcion() {
	return descripcion;
}
public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}


}
