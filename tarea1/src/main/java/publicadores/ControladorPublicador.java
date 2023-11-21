package publicadores;

import java.util.Date;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.ParameterStyle;
import javax.jws.soap.SOAPBinding.Style;
import javax.xml.ws.Endpoint;

import datatypes.*;
import excepciones.*;
import logica.*;
import interfaces.*;

@WebService
@SOAPBinding(style = Style.RPC, parameterStyle = ParameterStyle.WRAPPED)
public class ControladorPublicador {
	private Fabrica fabrica;
	private IActividadDeportiva iActividad;
	private IClase iClase;
	private IInstitucionDeportiva iInstitucion;
	private IRegistro iRegistro;
	private IUsuario iUsuario;
	private Endpoint endpoint;
	
	public ControladorPublicador() {
		fabrica = Fabrica.getInstancia();
		iActividad = fabrica.getIActividadDeportiva();
		iClase = fabrica.getIClase();
		iInstitucion = fabrica.getIInstitucionDeportiva();
		iRegistro = fabrica.getIRegistro();
		iUsuario = fabrica.getIUsuario();
	}
	
	@WebMethod(exclude = true)
	public void publicar() {
		endpoint = Endpoint.publish("http://localhost:1981/publicado", this);
	}
	
	@WebMethod(exclude = true)
	public Endpoint getEndpoint() {
		return endpoint;
	}
	
	// OPERACIONES - CActividadDeportiva
	// ---------------------------------
	
	@WebMethod
	public void altaActividadDeportiva(InstitucionDeportiva institucion, String nombreActividad, String descripcion, int duracionMinutos,
			double costo, Date fechaAlta)throws ExisteActividadDepException {
		iActividad.altaActividadDeportiva(institucion, nombreActividad, descripcion, duracionMinutos, costo, fechaAlta);
	}
	
	@WebMethod
	public ActividadDeportiva buscarActividadDeportiva(String nombre) {
		return iActividad.buscarActividadDeportiva(nombre);
	}
	
	@WebMethod
	public ActividadDeportiva[] obtenerActividadDeInstitucion(String institucion) {
		List<ActividadDeportiva> actividades = iActividad.consultaActividadDeportiva(institucion);
		ActividadDeportiva[] ret =  new ActividadDeportiva[actividades.size()];
		for (int i = 0; i < actividades.size(); i++) {
			ret[i] = actividades.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public ActividadDeportiva buscarActividad(String nombreActividad) {
		return iActividad.buscarActividad(nombreActividad);
	}
	
	@WebMethod
	public void modificarDescripcionActividad (String nombreActividad, String nuevaDescripcion) {
		iActividad.modificarDescripcion(nombreActividad, nuevaDescripcion);
	}
	
	@WebMethod
	public void modificarDuracionActividad (String nombreActividad, int nuevaDuracion) {
		iActividad.modificarDuracion(nombreActividad, nuevaDuracion);
	}
	
	@WebMethod
	public void modificarCostoActividad (String nombreActividad, double nuevoCosto) {
		iActividad.modificarCosto(nombreActividad, nuevoCosto);
	}
	
	@WebMethod
	public DtActividad[] getRankingActividades() {
		List<DtActividad> actividades = iActividad.getRankingActividades();
		
		DtActividad[] ret =  new DtActividad[actividades.size()];
		for (int i = 0; i < actividades.size(); i++) {
			ret[i] = actividades.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public DtActividad[] getActividadesDt() {
		List<DtActividad> actividades = iActividad.getActividades();
		
		DtActividad[] ret =  new DtActividad[actividades.size()];
		for (int i = 0; i < actividades.size(); i++) {
			ret[i] = actividades.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public boolean existeClaseEnActividad(String nombreActividad, String nombreClase) {
		return iActividad.existeClaseEnActividad(nombreActividad, nombreClase);
	}
	
	@WebMethod
	public DtClase[] getDtClasesDeActividad(String nombreActividad) {
		List<DtClase> clases = iActividad.getarrDtClase(nombreActividad);
		
		DtClase[] ret =  new DtClase[clases.size()];
		for (int i = 0; i < clases.size(); i++) {
			ret[i] = clases.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public boolean existeActividad(String nombreActividad) {
		return iActividad.existeActividad(nombreActividad);
	}
	
	@WebMethod
	public DtActividad getDtActividad(String nombreActividad) {
		return iActividad.getDtActividad(nombreActividad);
	}
	
	// ---------------------------------
	// OPERACIONES - CClase
	// ---------------------------------
	
	@WebMethod
	public Clase buscarClase(String nombreClase) {
		return iClase.buscarClase(nombreClase);
	}
	
	@WebMethod
	public void altaDictadoClase(String nombreClase, DtActividad actividadDeportiva, Date fechaClase, String nombreProfesor,
			String horaInicio, String urlClase, Date fechaRegistro) throws ClaseRepetidaException {
		iClase.altaDictadoClase(nombreClase, actividadDeportiva, fechaClase, nombreProfesor, horaInicio, urlClase, fechaRegistro);
	}
	
	@WebMethod
	public DtClase[] getRankingClases() {
		List<DtClase> clases = iClase.getRankingClases();
		
		DtClase[] ret =  new DtClase[clases.size()];
		for (int i = 0; i < clases.size(); i++) {
			ret[i] = clases.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public String[] obtenerNombreSociosDeClase(String nombreClase) {
		List<String> socios = iClase.obtenerSociosDeUnaClase(nombreClase);
		
		String[] ret =  new String[socios.size()];
		for (int i = 0; i < socios.size(); i++) {
			ret[i] = socios.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public DtClase getDtClase(String nombreClase) {
		return iClase.getDtClase(nombreClase);
	}
	
	@WebMethod
	public boolean existeClase(String nombreClase) {
		return iClase.existeClase(nombreClase);
	}
	
	// ---------------------------------
	// OPERACIONES - CInstitucionDeportiva
	// ---------------------------------
	
	@WebMethod
	public void altaInstitucionDeportiva(String nombre, String descripcion, String url) throws InstitucionRepetidaException {
		iInstitucion.altaInstitucionDeportiva(nombre, descripcion, url);
	}
	
	@WebMethod
	public InstitucionDeportiva buscarInstitucionDeportiva(String nombre) {
		return iInstitucion.buscarInstitucionDeportiva(nombre);
	}
	
	@WebMethod
	public void agregarActividadAInstitucion(InstitucionDeportiva unaInstitucion, ActividadDeportiva unaActividad) {
		iInstitucion.agregarActividadDeportivaInstitucion(unaInstitucion, unaActividad);
	}
	
	@WebMethod
	public ActividadDeportiva buscarActividadDeportivaEnInstitucion(String nombreInstitucion, String nombreActividad) { 
		return iInstitucion.buscarActividadDeportiva(nombreInstitucion, nombreActividad);
	}
	
	@WebMethod
	public void modificarDescripcionInstitucion (String nombreInstitucion, String nuevaDescripcion) {
		iInstitucion.modificarDescripcion(nombreInstitucion, nuevaDescripcion);
	}
	
	@WebMethod
	public void modificarUrlInstitucion (String nombreInstitucion, String nuevoUrl) {
		iInstitucion.modificarUrl(nombreInstitucion, nuevoUrl);
	}
	
	@WebMethod
	public String[] obtenerNombresInstituciones() {
		List<String> instituciones = iInstitucion.getListaNombreInstituciones();
		
		String[] ret =  new String[instituciones.size()];
		for (int i = 0; i < instituciones.size(); i++) {
			ret[i] = instituciones.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public boolean existeInstitucion(String nombre) {
		return iInstitucion.existeInstitucion(nombre);
	}
	
	@WebMethod
	public boolean existeActividadEnUnaInstitucion(String nombreInstitucion, String nombreActividad) {
		return iInstitucion.existeActividadEnUnaInstitucion(nombreInstitucion, nombreActividad);
	}
	
	@WebMethod
	public DtActividad obtenerActividadDeUnaInstitucion(String nombreInstitucion, String nombreActividad) { 
		return iInstitucion.obtenerActividadDeUnaInstitucion(nombreInstitucion, nombreActividad);
	}
	
	@WebMethod
	public String[] obtenerNombreActividadesDeUnaInstitucion(String nombreInstitucion) {
		List<String> actividades = iInstitucion.obtenerActividadesDeUnaInstitucion(nombreInstitucion);
		
		String[] ret =  new String[actividades.size()];
		for (int i = 0; i < actividades.size(); i++) {
			ret[i] = actividades.get(i);
		}
		
		return ret;
	}
	
	@WebMethod 
	public DtInstitucion[] getInstituciones() {
		List<DtInstitucion> instituciones = iInstitucion.getInstituciones();
		
		DtInstitucion[] ret =  new DtInstitucion[instituciones.size()];
		for (int i = 0; i < instituciones.size(); i++) {
			ret[i] = instituciones.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public boolean existeActividadEnInstitucion(String nombreInstitucion, String nombreActividad) {
		return iInstitucion.existeActividadEnInstitucion(nombreInstitucion, nombreActividad);
	}
	
	@WebMethod
	public String[] obtenerNombreClasesDeActividad(String nombreInstitucion, String nombreActividad) {
		List<String> clases = iInstitucion.obtenerClasesDeActividad(nombreInstitucion, nombreActividad);
		
		String[] ret =  new String[clases.size()];
		for (int i = 0; i < clases.size(); i++) {
			ret[i] = clases.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public boolean existeClaseDeActividad(String nombreInstitucion, String nombreActividad, String nombreClase) {
		return iInstitucion.existeClaseDeActividad(nombreInstitucion, nombreActividad, nombreClase);
	}
	
	@WebMethod
	public DtClase obtenerDtClase(String nombreInstitucion, String nombreActividad, String nombreClase) {
		return iInstitucion.obtenerDtClase(nombreInstitucion, nombreActividad, nombreClase);
	}
	
	@WebMethod
	public DtInstitucion getDtInstitucion(String nombreInstitucion) {
		return iInstitucion.getDtInstitucion(nombreInstitucion);
	}
	
	
	// ---------------------------------
	// OPERACIONES - CRegistro
	// ---------------------------------
	
	@WebMethod
	public void registroDictadoClases(Date FechaRegistro, String unSocio, String unaClase) throws RegistroClaseRepetidoException {
		iRegistro.RegistroDictadoClases(FechaRegistro, unSocio, unaClase);
	}

	@WebMethod
	public boolean existeRegistro(String unSocio, String unaClase) {
		return iRegistro.existeRegistro(unSocio, unaClase);
	}
	
	// ---------------------------------
	// OPERACIONES - CUsuario
	// ---------------------------------
	
	@WebMethod
	public void altaProfe(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento, InstitucionDeportiva institucion, String descripcionGeneral, String biografia, String sitioWeb) throws NicknameRepetidoException {
		iUsuario.altaUsuario(nickname, nombre, apellido, correoElectronico, fechaNacimiento);
	}
	
	@WebMethod
	public void altaSocio(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento) throws NicknameRepetidoException {
		iUsuario.altaUsuario(nickname, nombre, apellido, correoElectronico, fechaNacimiento, null, nombre, apellido, correoElectronico);
	}
	
	@WebMethod
	public boolean existeUsuario(String nombre) {
		return iUsuario.existeUsuario(nombre);
	}
	
	@WebMethod
	public boolean esSocio(String nickname) {
		return iUsuario.esSocio(nickname);
	}
	
	@WebMethod
	public boolean esProfesor(String nombre) {
		return iUsuario.esProfesor(nombre);
	}
	
	@WebMethod
	public DtUsuario[] getUsuarios() {
		List<DtUsuario> usuarios = iUsuario.getUsuarios();
		
		DtUsuario[] ret =  new DtUsuario[usuarios.size()];
		for (int i = 0; i < usuarios.size(); i++) {
			ret[i] = usuarios.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public void modificarNombreUsuario(String nickname, String nuevoNombre) {
		iUsuario.modificarNombre(nickname, nuevoNombre);
	}
	
	@WebMethod
	public void modificarApellido(String nickname, String nuevoApellido) {
		iUsuario.modificarApellido(nickname, nuevoApellido);
	}
	
	@WebMethod
	public void modificarFechaNacimiento(String nickname, Date nuevaFecha) {
		iUsuario.modificarFechaNacimiento(nickname, nuevaFecha);
	}
	
	@WebMethod
	public Usuario buscarSocio(String nickname) {
		return iUsuario.buscarSocio(nickname);
	}
	
	@WebMethod
	public boolean existenUsuarios() {
		return iUsuario.existenUsuarios();
	}
	
	@WebMethod
	public String[] obtenerArrayNicknames() {
		List<String> nicknames = iUsuario.obtenerArrayNicknames();
		
		String[] ret =  new String[nicknames.size()];
		for (int i = 0; i < nicknames.size(); i++) {
			ret[i] = nicknames.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public Usuario buscarUsuario(String nickname) {
		return iUsuario.buscarUsuario(nickname);
	}
	
	@WebMethod
	public DtUsuario getDtUsuario(String nickname) {
		return iUsuario.getDtUsuario(nickname);
	}
	
	@WebMethod
	public DtSocio getDtSocio(String nickname) {
		return iUsuario.getDtSocio(nickname);
	}
	
	@WebMethod
	public DtProfesor getDtProfesor(String nickname) {
		return iUsuario.getDtProfesor(nickname);
	}
	
	@WebMethod
	public DtProfesor[] getListaProfesores() {
		List<DtProfesor> profesores = iUsuario.getListaProfesores();
		
		DtProfesor[] ret =  new DtProfesor[profesores.size()];
		for (int i = 0; i < profesores.size(); i++) {
			ret[i] = profesores.get(i);
		}
		
		return ret;
	}
	
	@WebMethod
	public boolean esContrasena(String nickname, String password) {
		return iUsuario.esContrasena(nickname, password);
	}
	
}
