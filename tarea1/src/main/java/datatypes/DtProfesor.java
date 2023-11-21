package datatypes;

import java.util.Date;
import java.util.ArrayList;
import java.util.List;

import logica.Clase;
import logica.InstitucionDeportiva;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public class DtProfesor extends DtUsuario {
    private InstitucionDeportiva institucion;
    private String descripcionGeneral;
    private String biografia;
    private String sitioWeb;
    private List<Clase> clases = new ArrayList<>();
    
    public DtProfesor() {
    	super();
    }

    public DtProfesor(String nickname, String nombre, String apellido, String correoElectronico, Date fechaNacimiento, InstitucionDeportiva institucion, String descripcionGeneral, String biografia, String sitioWeb, List<Clase> clases) {
        this.institucion = institucion;
        this.descripcionGeneral = descripcionGeneral;
        this.biografia = biografia;
        this.sitioWeb = sitioWeb;
        this.clases = clases;
    }

    public String getNombreInstitucion() {
        return institucion.getNombre();
    }

    public String getDescripcionGeneral() {
        return descripcionGeneral;
    }

    public String getBiografia() {
        return biografia;
    }

    public String getSitioWeb() {
        return sitioWeb;
    }

    public List<DtClase> getClases() {
    	List<DtClase> dtClases = new ArrayList<>();
    	
    	for(Clase c: clases) {
    		dtClases.add(c.getDtClase());
    	}
    	
        return dtClases;
    }

}
