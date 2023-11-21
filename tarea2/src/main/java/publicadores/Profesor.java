/**
 * Profesor.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class Profesor  extends publicadores.Usuario  implements java.io.Serializable {
    private java.lang.String biografia;

    private java.lang.String descripcionGeneral;

    private publicadores.InstitucionDeportiva institucion;

    private java.lang.String sitioWeb;

    public Profesor() {
    }

    public Profesor(
           java.lang.String apellido,
           java.lang.String correoElectronico,
           java.util.Calendar fechaNacimiento,
           java.lang.String nickname,
           java.lang.String nombre,
           java.lang.String password,
           java.lang.String biografia,
           java.lang.String descripcionGeneral,
           publicadores.InstitucionDeportiva institucion,
           java.lang.String sitioWeb) {
        super(
            apellido,
            correoElectronico,
            fechaNacimiento,
            nickname,
            nombre,
            password);
        this.biografia = biografia;
        this.descripcionGeneral = descripcionGeneral;
        this.institucion = institucion;
        this.sitioWeb = sitioWeb;
    }


    /**
     * Gets the biografia value for this Profesor.
     * 
     * @return biografia
     */
    public java.lang.String getBiografia() {
        return biografia;
    }


    /**
     * Sets the biografia value for this Profesor.
     * 
     * @param biografia
     */
    public void setBiografia(java.lang.String biografia) {
        this.biografia = biografia;
    }


    /**
     * Gets the descripcionGeneral value for this Profesor.
     * 
     * @return descripcionGeneral
     */
    public java.lang.String getDescripcionGeneral() {
        return descripcionGeneral;
    }


    /**
     * Sets the descripcionGeneral value for this Profesor.
     * 
     * @param descripcionGeneral
     */
    public void setDescripcionGeneral(java.lang.String descripcionGeneral) {
        this.descripcionGeneral = descripcionGeneral;
    }


    /**
     * Gets the institucion value for this Profesor.
     * 
     * @return institucion
     */
    public publicadores.InstitucionDeportiva getInstitucion() {
        return institucion;
    }


    /**
     * Sets the institucion value for this Profesor.
     * 
     * @param institucion
     */
    public void setInstitucion(publicadores.InstitucionDeportiva institucion) {
        this.institucion = institucion;
    }


    /**
     * Gets the sitioWeb value for this Profesor.
     * 
     * @return sitioWeb
     */
    public java.lang.String getSitioWeb() {
        return sitioWeb;
    }


    /**
     * Sets the sitioWeb value for this Profesor.
     * 
     * @param sitioWeb
     */
    public void setSitioWeb(java.lang.String sitioWeb) {
        this.sitioWeb = sitioWeb;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Profesor)) return false;
        Profesor other = (Profesor) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = super.equals(obj) && 
            ((this.biografia==null && other.getBiografia()==null) || 
             (this.biografia!=null &&
              this.biografia.equals(other.getBiografia()))) &&
            ((this.descripcionGeneral==null && other.getDescripcionGeneral()==null) || 
             (this.descripcionGeneral!=null &&
              this.descripcionGeneral.equals(other.getDescripcionGeneral()))) &&
            ((this.institucion==null && other.getInstitucion()==null) || 
             (this.institucion!=null &&
              this.institucion.equals(other.getInstitucion()))) &&
            ((this.sitioWeb==null && other.getSitioWeb()==null) || 
             (this.sitioWeb!=null &&
              this.sitioWeb.equals(other.getSitioWeb())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = super.hashCode();
        if (getBiografia() != null) {
            _hashCode += getBiografia().hashCode();
        }
        if (getDescripcionGeneral() != null) {
            _hashCode += getDescripcionGeneral().hashCode();
        }
        if (getInstitucion() != null) {
            _hashCode += getInstitucion().hashCode();
        }
        if (getSitioWeb() != null) {
            _hashCode += getSitioWeb().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Profesor.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "profesor"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("biografia");
        elemField.setXmlName(new javax.xml.namespace.QName("", "biografia"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descripcionGeneral");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descripcionGeneral"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("institucion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "institucion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "institucionDeportiva"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("sitioWeb");
        elemField.setXmlName(new javax.xml.namespace.QName("", "sitioWeb"));
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
