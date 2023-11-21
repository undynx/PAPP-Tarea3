package servlets;

import java.io.IOException;
import java.rmi.RemoteException;
import java.util.NoSuchElementException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import interfaces.Fabrica;
import interfaces.IUsuario;
import publicadores.*;

/**
 * Servlet implementation class InicioSesion
 */
@WebServlet("/InicioSesion")
public class InicioSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InicioSesion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String nicknameUser = request.getParameter("unNickname");
		String contrasenaUser = request.getParameter("unaPassword");
		
		try {
			if(existeUsuario(nicknameUser)) {
				if(esContrasena(nicknameUser, contrasenaUser)) {
					boolean esSocio = esSocio(nicknameUser);
					String tipo;
					
					if(!esSocio) {
						tipo = "Profesor";
					} else {
						tipo = "Socio";
					}
					
					request.getSession().setAttribute("nickname", nicknameUser);
					request.getSession().setAttribute("tipo", tipo);
					request.getRequestDispatcher("/index.jsp").forward(request, response);
					
				} else {
					throw new NoSuchElementException("No es la contraseña");
				}
			} else {
				throw new NoSuchElementException("No existe usuario");
			}
		} catch (NoSuchElementException nsee) {
			request.getRequestDispatcher("/Error.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean existeUsuario(String nickname) throws Exception {
		ControladorPublicadorService cps = new ControladorPublicadorServiceLocator();
		ControladorPublicador port = cps.getControladorPublicadorPort();
		return port.existeUsuario(nickname);
	}
	
	public boolean esContrasena(String nickname, String contrasena) throws Exception {
		ControladorPublicadorService cps = new ControladorPublicadorServiceLocator();
		ControladorPublicador port = cps.getControladorPublicadorPort();
		return port.esContrasena(nickname, contrasena);
	}
	
	public boolean esSocio(String nickname) throws Exception {
		ControladorPublicadorService cps = new ControladorPublicadorServiceLocator();
		ControladorPublicador port = cps.getControladorPublicadorPort();
		return port.esSocio(nickname);
	}

}
