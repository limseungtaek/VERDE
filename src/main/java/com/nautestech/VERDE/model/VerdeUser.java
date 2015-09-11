package com.nautestech.VERDE.model;

import java.util.List;

import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "list")
public class VerdeUser
{
    private List<XmlData> verdeUser;

    @XmlElementRef
	public List<XmlData> getVerdeUser() {
		return verdeUser;
	}

	public void setVerdeUser(List<XmlData> verdeUser) {
		this.verdeUser = verdeUser;
	}
}
