package datatypes;

import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
public final class DtRegistro {
    private Date fechaRegistro;
    private DtSocio socio;
    private DtClase clase;
    
    public DtRegistro() {
    	super();
    }

    public DtRegistro(Date fechaRegistro, DtSocio socio, DtClase clase) {
        this.fechaRegistro = fechaRegistro;
        this.socio = socio;
        this.clase = clase;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public DtSocio getSocio() {
        return socio;
    }

    public DtClase getClase() {
        return clase;
    }
}
