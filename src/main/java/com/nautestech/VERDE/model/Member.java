package com.nautestech.VERDE.model;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

public class Member {

    private String MEMBER_ID;
    private String MEMBER_PWD;
    private String MEMBER_NAME;
    
    
    
    public String getMEMBER_ID() {
		return MEMBER_ID;
	}



	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}



	public String getMEMBER_PWD() {
		return MEMBER_PWD;
	}



	public void setMEMBER_PWD(String mEMBER_PWD) {
		MEMBER_PWD = mEMBER_PWD;
	}



	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}



	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}



	@Override
	public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

}

