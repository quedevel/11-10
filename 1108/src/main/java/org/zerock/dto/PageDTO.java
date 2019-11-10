package org.zerock.dto;

import lombok.Data;

@Data
public class PageDTO {
	private Integer bno;
	private int page, amount;
	private String keyword, type;
	
	public PageDTO() {
		this.page = 1;
		this.amount = 10;
	}
	
	public int getSkip() {
		return (page - 1)*this.amount;
	}
	
	public String[] getTypes() {
		if(type == null || type.trim().length() == 0)	return null;
		return type.split("");
	}
}
