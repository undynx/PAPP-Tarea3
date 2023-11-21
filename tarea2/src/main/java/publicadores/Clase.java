/**
 * Clase.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class Clase  implements java.io.Serializable {
    private publicadores.ActividadDeportiva actividadDeportiva;

    private java.util.Calendar fechaClase;

    private java.util.Calendar fechaRegistro;

    private java.lang.String horaInicio;

    private java.lang.String nombreClase;

    private publicadores.Profesor profesor;

    private java.lang.String urlClase;

    public Clase() {
    }

    public Clase(
           publicadores.ActividadDeportiva actividadDeportiva,
           java.util.Calendar fechaClase,
           java.util.Calendar fechaRegistro,
           java.lang.String horaInicio,
           java.lang.String nombreClase,
           publicadores.Profesor profesor,
           java.lang.String urlClase) {
           this.actividadDeportiva = actividadDeportiva;
           this.fechaClase = fechaClase;
           this.fechaRegistro = fechaRegistro;
           this.horaInicio = horaInicio;
           this.nombreClase = nombreClase;
           this.profesor = profesor;
           this.urlClase = urlClase;
    }


    /**
     * Gets the actividadDeportiva value for this Clase.
     * 
     * @return actividadDeportiva
     */
    public publicadores.ActividadDeportiva getActividadDeportiva() {
        return actividadDeportiva;
    }


    /**
     * Sets the actividadDeportiva value for this Clase.
     * 
     * @param actividadDeportiva
     */
    public void setActividadDeportiva(publicadores.ActividadDeportiva actividadDeportiva) {
        this.actividadDeportiva = actividadDeportiva;
    }


    /**
     * Gets the fechaClase value for this Clase.
     * 
     * @return fechaClase
     */
    public java.util.Calendar getFechaClase() {
        return fechaClase;
    }


    /**
     * Sets the fechaClase value for this Clase.
     * 
     * @param fechaClase
     */
    public void setFechaClase(java.util.Calendar fechaClase) {
        this.fechaClase = fechaClase;
    }


    /**
     * Gets the fechaRegistro value for this Clase.
     * 
     * @return fechaRegistro
     */
    public java.util.Calendar getFechaRegistro() {
        return fechaRegistro;
    }


    /**
     * Sets the fechaRegistro value for this Clase.
     * 
     * @param fechaRegistro
     */
    public void setFechaRegistro(java.util.Calendar fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }


    /**
     * Gets the horaInicio value for this Clase.
     * 
     * @return horaInicio
     */
    public java.lang.String getHoraInicio() {
        return horaInicio;
    }


    /**
     * Sets the horaInicio value for this Clase.
     * 
     * @param horaInicio
     */
    public void setHoraInicio(java.lang.String horaInicio) {
        this.horaInicio = horaInicio;
    }


    /**
     * Gets the nombreClase value for this Clase.
     * 
     * @return nombreClase
     */
    public java.lang.String getNombreClase() {
        return nombreClase;
    }


    /**
     * Sets the nombreClase value for this Clase.
     * 
     * @param nombreClase
     */
    public void setNombreClase(java.lang.String nombreClase) {
        this.nombreClase = nombreClase;
    }


    /**
     * Gets the profesor value for this Clase.
     * 
     * @return profesor
     */
    public publicadores.Profesor getProfesor() {
        return profesor;
    }


    /**
     * Sets the profesor value for this Clase.
     * 
     * @param profesor
     */
    public void setProfesor(publicadores.Profesor profesor) {
        this.profesor = profesor;
    }


    /**
     * Gets the urlClase value for this Clase.
     * 
     * @return urlClase
     */
    public java.lang.String getUrlClase() {
        return urlClase;
    }


    /**
     * Sets the urlClase value for this Clase.
     * 
     * @param urlClase
     */
    public void setUrlClase(java.lang.String urlClase) {
        this.urlClase = urlClase;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Clase)) return false;
        Clase other = (Clase) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.actividadDeportiva==null && other.getActividadDeportiva()==null) || 
             (this.actividadDeportiva!=null &&
              this.actividadDeportiva.equals(other.getActividadDeportiva()))) &&
            ((this.fechaClase==null && other.getFechaClase()==null) || 
             (this.fechaClase!=null &&
              this.fechaClase.equals(other.getFechaClase()))) &&
            ((this.fechaRegistro==null && other.getFechaRegistro()==null) || 
             (this.fechaRegistro!=null &&
              this.fechaRegistro.equals(other.getFechaRegistro()))) &&
            ((this.horaInicio==null && other.getHoraInicio()==null) || 
             (this.horaInicio!=null &&
              this.horaInicio.equals(other.getHoraInicio()))) &&
            ((this.nombreClase==null && other.getNombreClase()==null) || 
             (this.nombreClase!=null &&
              this.nombreClase.equals(other.getNombreClase()))) &&
            ((this.profesor==null && other.getProfesor()==null) || 
             (this.profesor!=null &&
              this.profesor.equals(other.getProfesor()))) &&
            ((this.urlClase==null && other.getUrlClase()==null) || 
             (this.urlClase!=null &&
              this.urlClase.equals(other.getUrlClase())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getActividadDeportiva() != null) {
            _hashCode += getActividadDeportiva().hashCode();
        }
        if (getFechaClase() != null) {
            _hashCode += getFechaClase().hashCode();
        }
        if (getFechaRegistro() != null) {
            _hashCode += getFechaRegistro().hashCode();
        }
        if (getHoraInicio() != null) {
            _hashCode += getHoraInicio().hashCode();
        }
        if (getNombreClase() != null) {
            _hashCode += getNombreClase().hashCode();
        }
        if (getProfesor() != null) {
            _hashCode += getProfesor().hashCode();
        }
        if (getUrlClase() != null) {
            _hashCode += getUrlClase().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Clase.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "clase"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("actividadDeportiva");
        elemField.setXmlName(new javax.xml.namespace.QName("", "actividadDeportiva"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "actividadDeportiva"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaClase");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaClase"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaRegistro");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaRegistro"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("horaInicio");
        elemField.setXmlName(new javax.xml.namespace.QName("", "horaInicio"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreClase");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreClase"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("profesor");
        elemField.setXmlName(new javax.xml.namespace.QName("", "profesor"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "profesor"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("urlClase");
        elemField.setXmlName(new javax.xml.namespace.QName("", "urlClase"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
