package com.nautestech.VERDE.model;

public class MemberAuth {
	private String MEMBER_ID;
	private String MEMBER_AUTH;
	
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getMEMBER_AUTH() {
		return MEMBER_AUTH;
	}
	public void setMEMBER_AUTH(String mEMBER_AUTH) {
		MEMBER_AUTH = mEMBER_AUTH;
	}
	@Override
	public String toString() {
		return "MemberAuth [MEMBER_ID=" + MEMBER_ID + ", MEMBER_AUTH="
				+ MEMBER_AUTH + "]";
	}
	
	
}
