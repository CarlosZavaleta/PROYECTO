package com.isil.user.conexion;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
	public static DriverManagerDataSource Conectar() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/bd_user?serverTimezone=UTC");
		dataSource.setUsername("root");
		dataSource.setPassword("123456");
		return dataSource;
	}
	public static JdbcTemplate ConectarDB() {
		return new JdbcTemplate(Conexion.Conectar());
	}
	
}
