package com.isil.user.dao;

import java.util.List;
import java.util.Optional;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.isil.user.conexion.Conexion;
import com.isil.user.model.Usuario;

@Repository
public class UsuarioDAO implements UsuarioInterfaceDAO {
	



	@Override
	public Usuario validarUser(String correo, String pass) {
		String sql="SELECT * FROM user where correo='"+correo+"' and pass='"+pass+"'";
		Usuario user=null;
		try {
			user=Conexion.ConectarDB().queryForObject(sql, new BeanPropertyRowMapper<>(Usuario.class));
			
		} catch (Exception e) {
			System.err.println("Error al Obtener datos " +e);
		}
		return user;
	}
}


