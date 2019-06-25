package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    
		//Datos del server de MySQL

	private String USERNAME = "mimawebapp";
	private String PASSWORD = "mi_mascota";
	private String HOST = "db4free.net";
	private String PORT = "3306";
	private String DATABASE = "mimawebapp";
	private String CLASSNAME = "com.mysql.jdbc.Driver";
	private String URL = "jdbc:mysql://"+ HOST +":"+ PORT +"/"+ DATABASE;   //Cadena de conexion 
	
	private Connection con;
	
	public Conexion() {
		try {
			Class.forName(CLASSNAME);
			con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		}catch (ClassNotFoundException e) {
			System.err.println("ERROR" + e);
		}catch (SQLException e) {
			System.err.println("Error" + e);
		}
	}
	public Connection getConexion() {
		return con;
	}
        /*public static void main(String[] Args){
            Conexion co = new Conexion();
        }*/
}
