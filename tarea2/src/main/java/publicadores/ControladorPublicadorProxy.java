package publicadores;

public class ControladorPublicadorProxy implements publicadores.ControladorPublicador {
  private String _endpoint = null;
  private publicadores.ControladorPublicador controladorPublicador = null;
  
  public ControladorPublicadorProxy() {
    _initControladorPublicadorProxy();
  }
  
  public ControladorPublicadorProxy(String endpoint) {
    _endpoint = endpoint;
    _initControladorPublicadorProxy();
  }
  
  private void _initControladorPublicadorProxy() {
    try {
      controladorPublicador = (new publicadores.ControladorPublicadorServiceLocator()).getControladorPublicadorPort();
      if (controladorPublicador != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)controladorPublicador)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)controladorPublicador)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (controladorPublicador != null)
      ((javax.xml.rpc.Stub)controladorPublicador)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public publicadores.ControladorPublicador getControladorPublicador() {
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador;
  }
  
  public void altaActividadDeportiva(publicadores.InstitucionDeportiva arg0, java.lang.String arg1, java.lang.String arg2, int arg3, double arg4, java.util.Calendar arg5) throws java.rmi.RemoteException, publicadores.ExisteActividadDepException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.altaActividadDeportiva(arg0, arg1, arg2, arg3, arg4, arg5);
  }
  
  public publicadores.ActividadDeportiva buscarActividadDeportiva(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.buscarActividadDeportiva(arg0);
  }
  
  public publicadores.ActividadDeportiva[] obtenerActividadDeInstitucion(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerActividadDeInstitucion(arg0);
  }
  
  public publicadores.ActividadDeportiva buscarActividad(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.buscarActividad(arg0);
  }
  
  public void modificarDescripcionActividad(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarDescripcionActividad(arg0, arg1);
  }
  
  public void modificarDuracionActividad(java.lang.String arg0, int arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarDuracionActividad(arg0, arg1);
  }
  
  public void modificarCostoActividad(java.lang.String arg0, double arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarCostoActividad(arg0, arg1);
  }
  
  public publicadores.DtActividad[] getRankingActividades() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getRankingActividades();
  }
  
  public publicadores.DtActividad[] getActividadesDt() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getActividadesDt();
  }
  
  public boolean existeClaseEnActividad(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeClaseEnActividad(arg0, arg1);
  }
  
  public publicadores.DtClase[] getDtClasesDeActividad(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getDtClasesDeActividad(arg0);
  }
  
  public boolean existeActividad(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeActividad(arg0);
  }
  
  public publicadores.DtActividad getDtActividad(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getDtActividad(arg0);
  }
  
  public publicadores.Clase buscarClase(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.buscarClase(arg0);
  }
  
  public void altaDictadoClase(java.lang.String arg0, publicadores.DtActividad arg1, java.util.Calendar arg2, java.lang.String arg3, java.lang.String arg4, java.lang.String arg5, java.util.Calendar arg6) throws java.rmi.RemoteException, publicadores.ClaseRepetidaException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.altaDictadoClase(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
  }
  
  public publicadores.DtClase[] getRankingClases() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getRankingClases();
  }
  
  public java.lang.String[] obtenerNombreSociosDeClase(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerNombreSociosDeClase(arg0);
  }
  
  public publicadores.DtClase getDtClase(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getDtClase(arg0);
  }
  
  public boolean existeClase(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeClase(arg0);
  }
  
  public void altaInstitucionDeportiva(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException, publicadores.InstitucionRepetidaException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.altaInstitucionDeportiva(arg0, arg1, arg2);
  }
  
  public publicadores.InstitucionDeportiva buscarInstitucionDeportiva(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.buscarInstitucionDeportiva(arg0);
  }
  
  public void agregarActividadAInstitucion(publicadores.InstitucionDeportiva arg0, publicadores.ActividadDeportiva arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.agregarActividadAInstitucion(arg0, arg1);
  }
  
  public publicadores.ActividadDeportiva buscarActividadDeportivaEnInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.buscarActividadDeportivaEnInstitucion(arg0, arg1);
  }
  
  public void modificarDescripcionInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarDescripcionInstitucion(arg0, arg1);
  }
  
  public void modificarUrlInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarUrlInstitucion(arg0, arg1);
  }
  
  public java.lang.String[] obtenerNombresInstituciones() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerNombresInstituciones();
  }
  
  public boolean existeInstitucion(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeInstitucion(arg0);
  }
  
  public boolean existeActividadEnUnaInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeActividadEnUnaInstitucion(arg0, arg1);
  }
  
  public publicadores.DtActividad obtenerActividadDeUnaInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerActividadDeUnaInstitucion(arg0, arg1);
  }
  
  public java.lang.String[] obtenerNombreActividadesDeUnaInstitucion(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerNombreActividadesDeUnaInstitucion(arg0);
  }
  
  public boolean existeActividadEnInstitucion(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeActividadEnInstitucion(arg0, arg1);
  }
  
  public java.lang.String[] obtenerNombreClasesDeActividad(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerNombreClasesDeActividad(arg0, arg1);
  }
  
  public boolean existeClaseDeActividad(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeClaseDeActividad(arg0, arg1, arg2);
  }
  
  public publicadores.DtClase obtenerDtClase(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerDtClase(arg0, arg1, arg2);
  }
  
  public publicadores.DtInstitucion getDtInstitucion(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getDtInstitucion(arg0);
  }
  
  public void registroDictadoClases(java.util.Calendar arg0, java.lang.String arg1, java.lang.String arg2) throws java.rmi.RemoteException, publicadores.RegistroClaseRepetidoException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.registroDictadoClases(arg0, arg1, arg2);
  }
  
  public boolean existeRegistro(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeRegistro(arg0, arg1);
  }
  
  public void altaProfe(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, java.lang.String arg3, java.util.Calendar arg4, publicadores.InstitucionDeportiva arg5, java.lang.String arg6, java.lang.String arg7, java.lang.String arg8) throws java.rmi.RemoteException, publicadores.NicknameRepetidoException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.altaProfe(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
  }
  
  public void altaSocio(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, java.lang.String arg3, java.util.Calendar arg4) throws java.rmi.RemoteException, publicadores.NicknameRepetidoException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.altaSocio(arg0, arg1, arg2, arg3, arg4);
  }
  
  public boolean existeUsuario(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existeUsuario(arg0);
  }
  
  public boolean esSocio(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.esSocio(arg0);
  }
  
  public boolean esProfesor(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.esProfesor(arg0);
  }
  
  public publicadores.DtUsuario[] getUsuarios() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getUsuarios();
  }
  
  public void modificarNombreUsuario(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarNombreUsuario(arg0, arg1);
  }
  
  public void modificarApellido(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarApellido(arg0, arg1);
  }
  
  public void modificarFechaNacimiento(java.lang.String arg0, java.util.Calendar arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    controladorPublicador.modificarFechaNacimiento(arg0, arg1);
  }
  
  public publicadores.Usuario buscarSocio(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.buscarSocio(arg0);
  }
  
  public boolean existenUsuarios() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.existenUsuarios();
  }
  
  public java.lang.String[] obtenerArrayNicknames() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.obtenerArrayNicknames();
  }
  
  public publicadores.Usuario buscarUsuario(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.buscarUsuario(arg0);
  }
  
  public publicadores.DtUsuario getDtUsuario(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getDtUsuario(arg0);
  }
  
  public publicadores.DtSocio getDtSocio(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getDtSocio(arg0);
  }
  
  public publicadores.DtProfesor getDtProfesor(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getDtProfesor(arg0);
  }
  
  public publicadores.DtProfesor[] getListaProfesores() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getListaProfesores();
  }
  
  public boolean esContrasena(java.lang.String arg0, java.lang.String arg1) throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.esContrasena(arg0, arg1);
  }
  
  public publicadores.DtInstitucion[] getInstituciones() throws java.rmi.RemoteException{
    if (controladorPublicador == null)
      _initControladorPublicadorProxy();
    return controladorPublicador.getInstituciones();
  }
  
  
}