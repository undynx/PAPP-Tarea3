package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.ActividadDeportiva;
import logica.Registro;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public final class DtClase {
	private String nombre;
	private ActividadDeportiva actividad;
	private Date fechaClase;
	private String horaInicio;
	private String url;
	private Date fechaRegistro;
    private List<Registro> registros = new ArrayList<>();
    
    public DtClase () {
    	super();
    }
	
	public DtClase(String nombre, Date fechaClase, String horaInicio,String url, Date fechaRegistro) {
		this.nombre = nombre;
		this.fechaClase = fechaClase;
		this.horaInicio = horaInicio;
		this.url = url;
		this.fechaRegistro = fechaRegistro;
	}
	
	public DtClase(List<Registro> registros,String nombre, Date fechaClase, String url) {
    	this.nombre = nombre;
    	this.fechaClase = fechaClase;
    	this.url = url;
    	this.registros = registros;
    }
	
	public DtClase(String nombre, ActividadDeportiva actividad, Date fechaClase, String horaInicio,String url, Date fechaRegistro) {
		this.nombre = nombre;
		this.actividad = actividad;
		this.fechaClase = fechaClase;
		this.horaInicio = horaInicio;
		this.url = url;
		this.fechaRegistro = fechaRegistro;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public ActividadDeportiva getActividadDeportiva() {
		return actividad;
	}

	public String getUrl() {
		return url;
	}
	
	public Date getFechaClase() {
		return fechaClase;
	}
	
	public String getHoraInicio() {
		return horaInicio;
	}

	public Date getFechaRegistro() {
		return fechaRegistro;
	}
	
	public int getCantidadClases() {
        return (registros != null) ? registros.size() : 0;
    }
	

}
