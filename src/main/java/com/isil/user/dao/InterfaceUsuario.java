package com.isil.user.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.isil.user.model.Usuario;

@Repository
public interface InterfaceUsuario extends CrudRepository<Usuario, Integer>{

}
