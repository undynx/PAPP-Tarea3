/**
 * ActividadDeportiva.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class ActividadDeportiva  implements java.io.Serializable {
    private publicadores.Clase[] arrayClase;

    private double costo;

    private java.lang.String descripcion;

    private int duracionMinutos;

    private java.util.Calendar fechaRegistro;

    private publicadores.InstitucionDeportiva institucion;

    private java.lang.String nombre;

    public ActividadDeportiva() {
    }

    public ActividadDeportiva(
           publicadores.Clase[] arrayClase,
           double costo,
           java.lang.String descripcion,
           int duracionMinutos,
           java.util.Calendar fechaRegistro,
           publicadores.InstitucionDeportiva institucion,
           java.lang.String nombre) {
           this.arrayClase = arrayClase;
           this.costo = costo;
           this.descripcion = descripcion;
           this.duracionMinutos = duracionMinutos;
           this.fechaRegistro = fechaRegistro;
           this.institucion = institucion;
           this.nombre = nombre;
    }


    /**
     * Gets the arrayClase value for this ActividadDeportiva.
     * 
     * @return arrayClase
     */
    public publicadores.Clase[] getArrayClase() {
        return arrayClase;
    }


    /**
     * Sets the arrayClase value for this ActividadDeportiva.
     * 
     * @param arrayClase
     */
    public void setArrayClase(publicadores.Clase[] arrayClase) {
        this.arrayClase = arrayClase;
    }

    public publicadores.Clase getArrayClase(int i) {
        return this.arrayClase[i];
    }

    public void setArrayClase(int i, publicadores.Clase _value) {
        this.arrayClase[i] = _value;
    }


    /**
     * Gets the costo value for this ActividadDeportiva.
     * 
     * @return costo
     */
    public double getCosto() {
        return costo;
    }


    /**
     * Sets the costo value for this ActividadDeportiva.
     * 
     * @param costo
     */
    public void setCosto(double costo) {
        this.costo = costo;
    }


    /**
     * Gets the descripcion value for this ActividadDeportiva.
     * 
     * @return descripcion
     */
    public java.lang.String getDescripcion() {
        return descripcion;
    }


    /**
     * Sets the descripcion value for this ActividadDeportiva.
     * 
     * @param descripcion
     */
    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }


    /**
     * Gets the duracionMinutos value for this ActividadDeportiva.
     * 
     * @return duracionMinutos
     */
    public int getDuracionMinutos() {
        return duracionMinutos;
    }


    /**
     * Sets the duracionMinutos value for this ActividadDeportiva.
     * 
     * @param duracionMinutos
     */
    public void setDuracionMinutos(int duracionMinutos) {
        this.duracionMinutos = duracionMinutos;
    }


    /**
     * Gets the fechaRegistro value for this ActividadDeportiva.
     * 
     * @return fechaRegistro
     */
    public java.util.Calendar getFechaRegistro() {
        return fechaRegistro;
    }


    /**
     * Sets the fechaRegistro value for this ActividadDeportiva.
     * 
     * @param fechaRegistro
     */
    public void setFechaRegistro(java.util.Calendar fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }


    /**
     * Gets the institucion value for this ActividadDeportiva.
     * 
     * @return institucion
     */
    public publicadores.InstitucionDeportiva getInstitucion() {
        return institucion;
    }


    /**
     * Sets the institucion value for this ActividadDeportiva.
     * 
     * @param institucion
     */
    public void setInstitucion(publicadores.InstitucionDeportiva institucion) {
        this.institucion = institucion;
    }


    /**
     * Gets the nombre value for this ActividadDeportiva.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this ActividadDeportiva.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof ActividadDeportiva)) return false;
        ActividadDeportiva other = (ActividadDeportiva) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.arrayClase==null && other.getArrayClase()==null) || 
             (this.arrayClase!=null &&
              java.util.Arrays.equals(this.arrayClase, other.getArrayClase()))) &&
            this.costo == other.getCosto() &&
            ((this.descripcion==null && other.getDescripcion()==null) || 
             (this.descripcion!=null &&
              this.descripcion.equals(other.getDescripcion()))) &&
            this.duracionMinutos == other.getDuracionMinutos() &&
            ((this.fechaRegistro==null && other.getFechaRegistro()==null) || 
             (this.fechaRegistro!=null &&
              this.fechaRegistro.equals(other.getFechaRegistro()))) &&
            ((this.institucion==null && other.getInstitucion()==null) || 
             (this.institucion!=null &&
              this.institucion.equals(other.getInstitucion()))) &&
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre())));
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
        if (getArrayClase() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getArrayClase());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getArrayClase(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        _hashCode += new Double(getCosto()).hashCode();
        if (getDescripcion() != null) {
            _hashCode += getDescripcion().hashCode();
        }
        _hashCode += getDuracionMinutos();
        if (getFechaRegistro() != null) {
            _hashCode += getFechaRegistro().hashCode();
        }
        if (getInstitucion() != null) {
            _hashCode += getInstitucion().hashCode();
        }
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(ActividadDeportiva.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "actividadDeportiva"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("arrayClase");
        elemField.setXmlName(new javax.xml.namespace.QName("", "arrayClase"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "clase"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("costo");
        elemField.setXmlName(new javax.xml.namespace.QName("", "costo"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "double"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descripcion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descripcion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("duracionMinutos");
        elemField.setXmlName(new javax.xml.namespace.QName("", "duracionMinutos"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
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
        elemField.setFieldName("institucion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "institucion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "institucionDeportiva"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
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
