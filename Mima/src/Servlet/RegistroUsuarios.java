package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controlador.Consultas;


@WebServlet("/Registrar")
public class RegistroUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RegistroUsuarios() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        response.setContentType("text/html;charset=UTF-8");
	
		
		String usuario = request.getParameter("USUARIO");
		String correo = request.getParameter("CORREO");
		String contraseña = request.getParameter("PASSWORD");
		
		Consultas co = new Consultas();
		if(co.registrar(usuario, correo, contraseña)) {
			response.sendRedirect("Index.jsp");
		}else {
			response.sendRedirect("Index.jsp");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
