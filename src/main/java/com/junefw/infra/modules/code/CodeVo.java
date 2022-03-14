package com.junefw.infra.modules.code;

public class CodeVo {
	// VO where 절에 들어가는 필드는 여기에
	private String ifcgSeq;
	private String ifcgName;
	private String ifcgNameEng;
	
	private String shIfcgSeq;
	private String shIfcgName;

	
	private String ifcdSeq;
	
	private String shOption;
	private String shValue;
	
	// --------------
	public String getIfcgNameEng() {
		return ifcgNameEng;
	}
	public void setIfcgNameEng(String ifcgNameEng) {
		this.ifcgNameEng = ifcgNameEng;
	}
	public String getShOption() {
		return shOption;
	}
	public void setShOption(String shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public String getShIfcgSeq() {
		return shIfcgSeq;
	}
	public void setShIfcgSeq(String shIfcgSeq) {
		this.shIfcgSeq = shIfcgSeq;
	}
	private Integer shIfcgDelNy;
	
	public Integer getShIfcgDelNy() {
		return shIfcgDelNy;
	}
	public void setShIfcgDelNy(Integer shIfcgDelNy) {
		this.shIfcgDelNy = shIfcgDelNy;
	}
	public String getShIfcgName() {
		return shIfcgName;
	}
	public void setShIfcgName(String shIfcgName) {
		this.shIfcgName = shIfcgName;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}