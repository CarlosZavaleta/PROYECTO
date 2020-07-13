package com.isil.user.service;

import java.util.List;

import com.isil.user.model.Usuario;


public interface UsuarioServiceInterface {
	public List<Usuario>listar();
	public Usuario gerUser(int id);
	public int add(Usuario u);
	public int update(Usuario u);
	public void delete(int id);
}
