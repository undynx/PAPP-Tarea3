package datatypes;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import logica.Clase;
import logica.InstitucionDeportiva;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public final class DtActividad {
    private InstitucionDeportiva institucion;
    private String nombre;
    private String descripcion;
    private int duracionMinutos;
    private double costo;
    private Date fechaRegistro;
    private List<Clase> clases = new ArrayList<>();
    
    public DtActividad() {
    	super();
    }
    
    public DtActividad(InstitucionDeportiva institucion, String nombre, String descripcion, int duracionMinutos, double costo, Date fechaRegistro, List<Clase> clases){
    	this.institucion = institucion;
    	this.nombre = nombre;
    	this.descripcion = descripcion;
    	this.duracionMinutos = duracionMinutos;
    	this.costo = costo;
    	this.fechaRegistro = fechaRegistro;
    	this.clases = clases;
    }
    
    public DtActividad(List<Clase> clases,String nombre, double costo, String descripcion) {
    	this.nombre = nombre;
    	this.costo = costo;
    	this.descripcion = descripcion;
    	this.clases = clases;
    }

	public DtInstitucion getInstitucion() {
		return institucion.getDtInstitucion();
	}

	public String getNombre() {
		return nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public int getDuracionMinutos() {
		return duracionMinutos;
	}

	public double getCosto() {
		return costo;
	}

	public Date getFechaRegistro() {
		return fechaRegistro;
	}
	
	public int getCantidadDeClases() {
		return clases.size();
		
	}
	
	public int getCantidadClases() {
        return (clases != null) ? clases.size() : 0;
    }
	
	public List<DtClase> getClases() {
		List<DtClase> dtClases = new ArrayList<>();
		
		for(Clase clase: clases) {
			dtClases.add(clase.getDtClase());
		}
		
		return dtClases;
	}
	public DtClase buscarDtClase(String nombre) {
		DtClase clase = null;
		if (clases.size() == 0) {
			return clase;
		} else {
			for(Clase c: clases) {
				if (c.getNombreClase().equals(nombre)) {
					clase = new DtClase(c.getNombreClase(),c.getActividadDeportiva(),c.getFechaClase(),c.getHoraInicio(),c.getUrlClase(),c.getFechaRegistro());
				}
			}
		}
		return clase;
	}
	public DtClase obtenerDtClase(String nombreClase) {
		DtClase clase = buscarDtClase(nombreClase);
		return clase;
	}
}
