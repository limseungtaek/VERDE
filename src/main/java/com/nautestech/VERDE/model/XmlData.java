package com.nautestech.VERDE.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlValue;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="verdeUser")
public class XmlData
{
    @XmlAttribute(name="username")
    private String name;

    @XmlValue
    private String value;

    /** Getter.
     * @return the name
     */
    public String getName() {
        return name;
    }

    /** Setter.
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /** Getter.
     * @return the value
     */
    public String getValue() {
        return value;
    }

    /** Setter.
     * @param value the value to set
     */
    public void setValue(String value) {
        this.value = value;
    }
}