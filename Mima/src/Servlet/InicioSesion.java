package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controlador.Consultas;

@WebServlet("/Iniciar")
public class InicioSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InicioSesion() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
	       
		
		String correo = request.getParameter("CORREO");
        //String usuario = request.getParameter("nombre");
		String contraseña = request.getParameter("PASSWORD");
		Consultas co = new Consultas();
		if(co.autenticacion(correo, contraseña)) {
			HttpSession objsesion = request.getSession(true);
			objsesion.setAttribute("CORREO", correo);
			response.sendRedirect("IndexRegistrado.jsp");
		}else {
			response.sendRedirect("Index.jsp");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
