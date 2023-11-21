/**
 * ControladorPublicador.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public interface ControladorPublicador extends java.rmi.Remote {
    public void altaActividadDeportiva(publicadores.InstitucionDeportiva arg0, java.lang.String arg1, java.lang.String arg2, int arg3, double arg4, java.util.Calendar arg5) throws java.rmi.RemoteException, publicadores.ExisteActividadDepException;
    public publicadores.ActividadDeportiva buscarActividadDeportiva(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.ActividadDeportiva[] obtenerActividadDeInstitucion(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.ActividadDeportiva buscarActividad(java.lang.String arg0) throws java.rmi.RemoteException;
    public void modificarDescripcionActividad(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void modificarDuracionActividad(java.lang.String arg0, int arg1) throws java.rmi.RemoteException;
    public void modificarCostoActividad(java.lang.String arg0, double arg1) throws java.rmi.RemoteException;
    public publicadores.DtActividad[] getRankingActividades() throws java.rmi.RemoteException;
    public publicadores.DtActividad[] getActividadesDt() throws java.rmi.RemoteException;
    public boolean existeClaseEnActividad(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public publicadores.DtClase[] getDtClasesDeActividad(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean existeActividad(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtActividad getDtActividad(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.Clase buscarClase(java.lang.String arg0) throws java.rmi.RemoteException;
    public void altaDictadoClase(java.lang.String arg0, publicadores.DtActividad arg1, java.util.Calendar arg2, java.lang.String arg3, java.lang.String arg4, java.lang.String arg5, java.util.Calendar arg6) throws java.rmi.RemoteException, publicadores.ClaseRepetidaException;
    public publicadores.DtClase[] getRankingClases() throws java.rmi.RemoteException;
    public java.lang.String[] obtenerNombreSociosDeClase(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtClase getDtClase(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean existeClase(java.lang.String arg0) throws java.rmi.RemoteException;
    public void altaInstitucionDeportiva(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException, publicadores.InstitucionRepetidaException;
    public publicadores.InstitucionDeportiva buscarInstitucionDeportiva(java.lang.String arg0) throws java.rmi.RemoteException;
    public void agregarActividadAInstitucion(publicadores.InstitucionDeportiva arg0, publicadores.ActividadDeportiva arg1) throws java.rmi.RemoteException;
    public publicadores.ActividadDeportiva buscarActividadDeportivaEnInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void modificarDescripcionInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void modificarUrlInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public java.lang.String[] obtenerNombresInstituciones() throws java.rmi.RemoteException;
    public boolean existeInstitucion(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean existeActividadEnUnaInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public publicadores.DtActividad obtenerActividadDeUnaInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public java.lang.String[] obtenerNombreActividadesDeUnaInstitucion(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean existeActividadEnInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public java.lang.String[] obtenerNombreClasesDeActividad(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public boolean existeClaseDeActividad(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException;
    public publicadores.DtClase obtenerDtClase(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException;
    public publicadores.DtInstitucion getDtInstitucion(java.lang.String arg0) throws java.rmi.RemoteException;
    public void registroDictadoClases(java.util.Calendar arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException, publicadores.RegistroClaseRepetidoException;
    public boolean existeRegistro(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void altaProfe(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, java.lang.String arg3, java.util.Calendar arg4, publicadores.InstitucionDeportiva arg5, java.lang.String arg6, java.lang.String arg7, java.lang.String arg8) throws java.rmi.RemoteException, publicadores.NicknameRepetidoException;
    public void altaSocio(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, java.lang.String arg3, java.util.Calendar arg4) throws java.rmi.RemoteException, publicadores.NicknameRepetidoException;
    public boolean existeUsuario(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean esSocio(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean esProfesor(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtUsuario[] getUsuarios() throws java.rmi.RemoteException;
    public void modificarNombreUsuario(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void modificarApellido(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public void modificarFechaNacimiento(java.lang.String arg0, java.util.Calendar arg1) throws java.rmi.RemoteException;
    public publicadores.Usuario buscarSocio(java.lang.String arg0) throws java.rmi.RemoteException;
    public boolean existenUsuarios() throws java.rmi.RemoteException;
    public java.lang.String[] obtenerArrayNicknames() throws java.rmi.RemoteException;
    public publicadores.Usuario buscarUsuario(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtUsuario getDtUsuario(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtSocio getDtSocio(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtProfesor getDtProfesor(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtProfesor[] getListaProfesores() throws java.rmi.RemoteException;
    public boolean esContrasena(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException;
    public publicadores.DtInstitucion[] getInstituciones() throws java.rmi.RemoteException;
}
