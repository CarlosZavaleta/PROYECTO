package com.isil.user.controler;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.tomcat.util.buf.UDecoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.isil.user.dao.InterfaceUsuario;
import com.isil.user.dao.UsuarioInterfaceDAO;
import com.isil.user.model.Usuario;
import com.isil.user.utils.Constants;

@Controller
public class Controlador {
	
	@Autowired
	private UsuarioInterfaceDAO userDao;
	
	@Autowired
	private InterfaceUsuario  walther;
	
	@GetMapping("/listar")
	public String getAll(Model model) {
		List<Usuario> datos = (List<Usuario>) walther.findAll();
		model.addAttribute("usuarios",datos);
		return Constants.URL_PRINCIPAL;
		
	}
	
	
	
	@GetMapping("/")
	public String login(Model model) {
		model.addAttribute("", "");
		return Constants.URL_LOGIN;
	}
	
	@PostMapping("/Validar")
	public String addUser(@Validated String correo, String pass, Model model) {
		Usuario u=null;
		
		if(correo!=null&&pass!=null) {
			u=userDao.validarUser(correo, pass);
			if(u!=null) {
				List<Usuario> datos = (List<Usuario>) walther.findAll();
				model.addAttribute("usuarios",datos);
				return "principal";
			}else {
				model.addAttribute("typo","alert alert-danger");
				model.addAttribute("Mensaje",Constants.MESSAGE_ERROR_LOGIN);
				return Constants.URL_MSG;
			}	
		}else {
			model.addAttribute("typo","alert alert-danger");
			model.addAttribute("Mensaje",Constants.MESSAGE_ERROR_LOGIN);
			return Constants.URL_MSG;
		}
			
	}
	@GetMapping("/new")
	public String newUser(Model model) {
		model.addAttribute("usuario",new Usuario());
		return Constants.URL_NEW;
	}
	
	//Comprobando
	
	@GetMapping("/editar/{id}")
	public String listarId(@PathVariable int id,Model model) {
		Optional<Usuario> usuario=null;
		usuario=walther.findById(id);
		model.addAttribute("usuario",usuario);
		return Constants.URL_EDIT;
	}
	@PostMapping("/save")
	public String newUser(@Validated Usuario usuario,Model model) {
		Usuario r=walther.save(usuario);
		if(r==null) {
			model.addAttribute("typo","alert alert-danger");
			model.addAttribute("Mensaje",Constants.MESSAGE_ERROR_LOGIN);
			return Constants.URL_MSG;
		}else {
			model.addAttribute("typo","alert alert-success");
			model.addAttribute("Mensaje",Constants.MESSAGE_SUCCESS);
			return Constants.URL_MSG;
		}
		
	}
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id,Model model) {	
		 walther.deleteById(id);
		return "redirect:/listar";
	}
	@GetMapping("/salir")
	public String salir(Model model) {		
		return Constants.URL_LOGIN;
	}
}
