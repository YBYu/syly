/**
 * InsertIntoInternalTourism.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.zzc.webservice.travelagency;

public class InsertIntoInternalTourism  implements java.io.Serializable {
    private java.lang.String areaID;

    private java.lang.String code;

    private java.lang.String unitMaster;

    private java.lang.String filler;

    private java.lang.String fillerTel;

    private java.lang.String sortID;

    private java.lang.String seasonDay;

    private java.lang.String seasonDay_boy;

    private java.lang.String season;

    private java.lang.String season_boy;

    private java.lang.String verificationCode;

    public InsertIntoInternalTourism() {
    }

    public InsertIntoInternalTourism(
           java.lang.String areaID,
           java.lang.String code,
           java.lang.String unitMaster,
           java.lang.String filler,
           java.lang.String fillerTel,
           java.lang.String sortID,
           java.lang.String seasonDay,
           java.lang.String seasonDay_boy,
           java.lang.String season,
           java.lang.String season_boy,
           java.lang.String verificationCode) {
           this.areaID = areaID;
           this.code = code;
           this.unitMaster = unitMaster;
           this.filler = filler;
           this.fillerTel = fillerTel;
           this.sortID = sortID;
           this.seasonDay = seasonDay;
           this.seasonDay_boy = seasonDay_boy;
           this.season = season;
           this.season_boy = season_boy;
           this.verificationCode = verificationCode;
    }


    /**
     * Gets the areaID value for this InsertIntoInternalTourism.
     * 
     * @return areaID
     */
    public java.lang.String getAreaID() {
        return areaID;
    }


    /**
     * Sets the areaID value for this InsertIntoInternalTourism.
     * 
     * @param areaID
     */
    public void setAreaID(java.lang.String areaID) {
        this.areaID = areaID;
    }


    /**
     * Gets the code value for this InsertIntoInternalTourism.
     * 
     * @return code
     */
    public java.lang.String getCode() {
        return code;
    }


    /**
     * Sets the code value for this InsertIntoInternalTourism.
     * 
     * @param code
     */
    public void setCode(java.lang.String code) {
        this.code = code;
    }


    /**
     * Gets the unitMaster value for this InsertIntoInternalTourism.
     * 
     * @return unitMaster
     */
    public java.lang.String getUnitMaster() {
        return unitMaster;
    }


    /**
     * Sets the unitMaster value for this InsertIntoInternalTourism.
     * 
     * @param unitMaster
     */
    public void setUnitMaster(java.lang.String unitMaster) {
        this.unitMaster = unitMaster;
    }


    /**
     * Gets the filler value for this InsertIntoInternalTourism.
     * 
     * @return filler
     */
    public java.lang.String getFiller() {
        return filler;
    }


    /**
     * Sets the filler value for this InsertIntoInternalTourism.
     * 
     * @param filler
     */
    public void setFiller(java.lang.String filler) {
        this.filler = filler;
    }


    /**
     * Gets the fillerTel value for this InsertIntoInternalTourism.
     * 
     * @return fillerTel
     */
    public java.lang.String getFillerTel() {
        return fillerTel;
    }


    /**
     * Sets the fillerTel value for this InsertIntoInternalTourism.
     * 
     * @param fillerTel
     */
    public void setFillerTel(java.lang.String fillerTel) {
        this.fillerTel = fillerTel;
    }


    /**
     * Gets the sortID value for this InsertIntoInternalTourism.
     * 
     * @return sortID
     */
    public java.lang.String getSortID() {
        return sortID;
    }


    /**
     * Sets the sortID value for this InsertIntoInternalTourism.
     * 
     * @param sortID
     */
    public void setSortID(java.lang.String sortID) {
        this.sortID = sortID;
    }


    /**
     * Gets the seasonDay value for this InsertIntoInternalTourism.
     * 
     * @return seasonDay
     */
    public java.lang.String getSeasonDay() {
        return seasonDay;
    }


    /**
     * Sets the seasonDay value for this InsertIntoInternalTourism.
     * 
     * @param seasonDay
     */
    public void setSeasonDay(java.lang.String seasonDay) {
        this.seasonDay = seasonDay;
    }


    /**
     * Gets the seasonDay_boy value for this InsertIntoInternalTourism.
     * 
     * @return seasonDay_boy
     */
    public java.lang.String getSeasonDay_boy() {
        return seasonDay_boy;
    }


    /**
     * Sets the seasonDay_boy value for this InsertIntoInternalTourism.
     * 
     * @param seasonDay_boy
     */
    public void setSeasonDay_boy(java.lang.String seasonDay_boy) {
        this.seasonDay_boy = seasonDay_boy;
    }


    /**
     * Gets the season value for this InsertIntoInternalTourism.
     * 
     * @return season
     */
    public java.lang.String getSeason() {
        return season;
    }


    /**
     * Sets the season value for this InsertIntoInternalTourism.
     * 
     * @param season
     */
    public void setSeason(java.lang.String season) {
        this.season = season;
    }


    /**
     * Gets the season_boy value for this InsertIntoInternalTourism.
     * 
     * @return season_boy
     */
    public java.lang.String getSeason_boy() {
        return season_boy;
    }


    /**
     * Sets the season_boy value for this InsertIntoInternalTourism.
     * 
     * @param season_boy
     */
    public void setSeason_boy(java.lang.String season_boy) {
        this.season_boy = season_boy;
    }


    /**
     * Gets the verificationCode value for this InsertIntoInternalTourism.
     * 
     * @return verificationCode
     */
    public java.lang.String getVerificationCode() {
        return verificationCode;
    }


    /**
     * Sets the verificationCode value for this InsertIntoInternalTourism.
     * 
     * @param verificationCode
     */
    public void setVerificationCode(java.lang.String verificationCode) {
        this.verificationCode = verificationCode;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof InsertIntoInternalTourism)) return false;
        InsertIntoInternalTourism other = (InsertIntoInternalTourism) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.areaID==null && other.getAreaID()==null) || 
             (this.areaID!=null &&
              this.areaID.equals(other.getAreaID()))) &&
            ((this.code==null && other.getCode()==null) || 
             (this.code!=null &&
              this.code.equals(other.getCode()))) &&
            ((this.unitMaster==null && other.getUnitMaster()==null) || 
             (this.unitMaster!=null &&
              this.unitMaster.equals(other.getUnitMaster()))) &&
            ((this.filler==null && other.getFiller()==null) || 
             (this.filler!=null &&
              this.filler.equals(other.getFiller()))) &&
            ((this.fillerTel==null && other.getFillerTel()==null) || 
             (this.fillerTel!=null &&
              this.fillerTel.equals(other.getFillerTel()))) &&
            ((this.sortID==null && other.getSortID()==null) || 
             (this.sortID!=null &&
              this.sortID.equals(other.getSortID()))) &&
            ((this.seasonDay==null && other.getSeasonDay()==null) || 
             (this.seasonDay!=null &&
              this.seasonDay.equals(other.getSeasonDay()))) &&
            ((this.seasonDay_boy==null && other.getSeasonDay_boy()==null) || 
             (this.seasonDay_boy!=null &&
              this.seasonDay_boy.equals(other.getSeasonDay_boy()))) &&
            ((this.season==null && other.getSeason()==null) || 
             (this.season!=null &&
              this.season.equals(other.getSeason()))) &&
            ((this.season_boy==null && other.getSeason_boy()==null) || 
             (this.season_boy!=null &&
              this.season_boy.equals(other.getSeason_boy()))) &&
            ((this.verificationCode==null && other.getVerificationCode()==null) || 
             (this.verificationCode!=null &&
              this.verificationCode.equals(other.getVerificationCode())));
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
        if (getAreaID() != null) {
            _hashCode += getAreaID().hashCode();
        }
        if (getCode() != null) {
            _hashCode += getCode().hashCode();
        }
        if (getUnitMaster() != null) {
            _hashCode += getUnitMaster().hashCode();
        }
        if (getFiller() != null) {
            _hashCode += getFiller().hashCode();
        }
        if (getFillerTel() != null) {
            _hashCode += getFillerTel().hashCode();
        }
        if (getSortID() != null) {
            _hashCode += getSortID().hashCode();
        }
        if (getSeasonDay() != null) {
            _hashCode += getSeasonDay().hashCode();
        }
        if (getSeasonDay_boy() != null) {
            _hashCode += getSeasonDay_boy().hashCode();
        }
        if (getSeason() != null) {
            _hashCode += getSeason().hashCode();
        }
        if (getSeason_boy() != null) {
            _hashCode += getSeason_boy().hashCode();
        }
        if (getVerificationCode() != null) {
            _hashCode += getVerificationCode().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(InsertIntoInternalTourism.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", ">InsertIntoInternalTourism"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("areaID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "AreaID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("code");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "Code"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("unitMaster");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "UnitMaster"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("filler");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "Filler"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fillerTel");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "FillerTel"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("sortID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "SortID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("seasonDay");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "SeasonDay"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("seasonDay_boy");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "SeasonDay_boy"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("season");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "Season"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("season_boy");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "Season_boy"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("verificationCode");
        elemField.setXmlName(new javax.xml.namespace.QName("http://lxstj.100chengxin.com/", "VerificationCode"));
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
