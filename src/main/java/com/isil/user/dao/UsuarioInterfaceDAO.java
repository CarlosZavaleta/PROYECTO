package com.isil.user.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.isil.user.model.Usuario;

public interface UsuarioInterfaceDAO  {


	
	public Usuario validarUser(String correo, String pass);
	
}
