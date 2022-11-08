package com.yoon.a04_vo;

import java.sql.Date;

public class TestVO {

	private int N_CNT;
	private String TITLE;
	private String CREATER;
	private Date W_DATE;
	private String CONTENTS;
	
	public int getN_CNT() {
		return N_CNT;
	}
	public void setN_CNT(int n_CNT) {
		N_CNT = n_CNT;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getCREATER() {
		return CREATER;
	}
	public void setCREATER(String cREATER) {
		CREATER = cREATER;
	}
	public Date getW_DATE() {
		return W_DATE;
	}
	public void setW_DATE(Date w_DATE) {
		W_DATE = w_DATE;
	}
	public String getCONTENTS() {
		return CONTENTS;
	}
	public void setCONTENTS(String cONTENTS) {
		CONTENTS = cONTENTS;
	}
	
	
	
}
