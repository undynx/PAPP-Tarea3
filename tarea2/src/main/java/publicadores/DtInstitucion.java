/**
 * DtInstitucion.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package publicadores;

public class DtInstitucion  implements java.io.Serializable {
    private java.lang.String nombre;

    private java.lang.String descripcion;

    private java.lang.String url;

    private publicadores.Profesor[] profesores;

    private publicadores.ActividadDeportiva[] actividades;

    public DtInstitucion() {
    }

    public DtInstitucion(
           java.lang.String nombre,
           java.lang.String descripcion,
           java.lang.String url,
           publicadores.Profesor[] profesores,
           publicadores.ActividadDeportiva[] actividades) {
           this.nombre = nombre;
           this.descripcion = descripcion;
           this.url = url;
           this.profesores = profesores;
           this.actividades = actividades;
    }


    /**
     * Gets the nombre value for this DtInstitucion.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this DtInstitucion.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }


    /**
     * Gets the descripcion value for this DtInstitucion.
     * 
     * @return descripcion
     */
    public java.lang.String getDescripcion() {
        return descripcion;
    }


    /**
     * Sets the descripcion value for this DtInstitucion.
     * 
     * @param descripcion
     */
    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }


    /**
     * Gets the url value for this DtInstitucion.
     * 
     * @return url
     */
    public java.lang.String getUrl() {
        return url;
    }


    /**
     * Sets the url value for this DtInstitucion.
     * 
     * @param url
     */
    public void setUrl(java.lang.String url) {
        this.url = url;
    }


    /**
     * Gets the profesores value for this DtInstitucion.
     * 
     * @return profesores
     */
    public publicadores.Profesor[] getProfesores() {
        return profesores;
    }


    /**
     * Sets the profesores value for this DtInstitucion.
     * 
     * @param profesores
     */
    public void setProfesores(publicadores.Profesor[] profesores) {
        this.profesores = profesores;
    }

    public publicadores.Profesor getProfesores(int i) {
        return this.profesores[i];
    }

    public void setProfesores(int i, publicadores.Profesor _value) {
        this.profesores[i] = _value;
    }


    /**
     * Gets the actividades value for this DtInstitucion.
     * 
     * @return actividades
     */
    public publicadores.ActividadDeportiva[] getActividades() {
        return actividades;
    }


    /**
     * Sets the actividades value for this DtInstitucion.
     * 
     * @param actividades
     */
    public void setActividades(publicadores.ActividadDeportiva[] actividades) {
        this.actividades = actividades;
    }

    public publicadores.ActividadDeportiva getActividades(int i) {
        return this.actividades[i];
    }

    public void setActividades(int i, publicadores.ActividadDeportiva _value) {
        this.actividades[i] = _value;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtInstitucion)) return false;
        DtInstitucion other = (DtInstitucion) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre()))) &&
            ((this.descripcion==null && other.getDescripcion()==null) || 
             (this.descripcion!=null &&
              this.descripcion.equals(other.getDescripcion()))) &&
            ((this.url==null && other.getUrl()==null) || 
             (this.url!=null &&
              this.url.equals(other.getUrl()))) &&
            ((this.profesores==null && other.getProfesores()==null) || 
             (this.profesores!=null &&
              java.util.Arrays.equals(this.profesores, other.getProfesores()))) &&
            ((this.actividades==null && other.getActividades()==null) || 
             (this.actividades!=null &&
              java.util.Arrays.equals(this.actividades, other.getActividades())));
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
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        if (getDescripcion() != null) {
            _hashCode += getDescripcion().hashCode();
        }
        if (getUrl() != null) {
            _hashCode += getUrl().hashCode();
        }
        if (getProfesores() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getProfesores());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getProfesores(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getActividades() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getActividades());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getActividades(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtInstitucion.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtInstitucion"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
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
        elemField.setFieldName("url");
        elemField.setXmlName(new javax.xml.namespace.QName("", "url"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("profesores");
        elemField.setXmlName(new javax.xml.namespace.QName("", "profesores"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "profesor"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("actividades");
        elemField.setXmlName(new javax.xml.namespace.QName("", "actividades"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "actividadDeportiva"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setMaxOccursUnbounded(true);
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
