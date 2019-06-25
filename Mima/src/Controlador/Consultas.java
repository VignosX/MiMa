package Controlador;
							//Autenticacion y Registro
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Consultas extends Conexion{

	public boolean autenticacion(String nombre, String contraseña) {
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			String consulta = "select * from USUARIO where CORREO = ? and PASSWORD = ?";
			pst = getConexion().prepareStatement(consulta);
			pst.setString(1, nombre);
			pst.setString(2, contraseña);
			rs = pst.executeQuery();
			
			if(rs.absolute(1)) {
				return true;  //Si existe un registro así significa que ya hay un usuario con esos datos
			}
			
		}catch (Exception e) {
			System.err.println("Error" + e);
		}finally {		//Al terminar se cierra la conexion para mayor seguridad
			try{
				if(getConexion() != null) getConexion().close();
				if(pst != null) pst.close();
				if(rs != null) rs.close();
			}catch(Exception e) {
				System.err.println("Error" + e);
			}
		}
		return false;
	}
	public boolean registrar(String usuario, String correo, String contraseña) {
		PreparedStatement pst = null;
		
		try {
			String consulta = "insert into USUARIO (NOMBRE, CORREO, PASSWORD) values(?,?,?)"; 
                            //Se hace la consulta
			pst = getConexion().prepareStatement(consulta);  //Se hace la conexion
			pst.setString(1, usuario);
			pst.setString(2, correo);		//Se pasan los parametros
			pst.setString(3, contraseña);
			
			if (pst.executeUpdate() == 1) {
				return true;		//En caso de que la consulta se ejecute correctamente
			}
		}catch(Exception ex) {
			System.err.println("Error" + ex);
		}finally {
			try {
				if (getConexion() != null) getConexion().close();
				if (pst != null) pst.close();
			}catch(Exception e) {
				System.err.println("Error" + e);
			}
		}
		
		return false;
                
	
}
	public boolean registrarMascota(String nombre, String especie, String raza, String colorPelo, String caracter,  double castrado, String genero, String correo, int codigo) {
		PreparedStatement pst = null;
		
		try {
			String consulta = "insert into MASCOTA (NOMBRE, ESPECIE, RAZAS, COLORPELO, CARACTER, CASTRADO, GENERO, CORREO, CODIGO) values(?,?,?,?,?,?,?,?,?)"; 
                            //Se hace la consulta
			pst = getConexion().prepareStatement(consulta);  //Se hace la conexion
			pst.setString(1, nombre);
			pst.setString(2, especie);		//Se pasan los parametros
			pst.setString(3, raza);
			pst.setString(4, colorPelo);
			pst.setString(5, caracter);
			pst.setDouble(6, castrado);
			pst.setString(7, genero);
			pst.setString(8, correo);
			pst.setInt(9, codigo);
			
			if (pst.executeUpdate() == 1) {
				return true;		//En caso de que la consulta se ejecute correctamente
			}
		}catch(Exception ex) {
			System.err.println("Error" + ex);
		}finally {
			try {
				if (getConexion() != null) getConexion().close();
				if (pst != null) pst.close();
			}catch(Exception e) {
				System.err.println("Error" + e);
			}
		}
		
		return false;
                
	
}
					//Para comprobar si está bien, si devuelve true
					//significa que se ha registrado correctamente
	
	/*public static void main(String[] args) {
		Consultas co = new Consultas();
		System.out.println(co.registrarMascota("toby", "perro", "caniche", "marron", "independiente", 0 , "masculino", "pablohv08@gmail.com", 1));
	}*/

	
					//Para comprobar si el usuario está registrado al iniciarlo como java application
					//si no lo está devolverá un false
	
	/*public static void main(String[] args) {
		Consultas co = new Consultas();
		System.out.println(co.autenticacion("pablohv08@gmail.com", "Hola1234"));
	}*/
}
