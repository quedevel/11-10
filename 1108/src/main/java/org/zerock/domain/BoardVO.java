package org.zerock.domain;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class BoardVO {

	private Integer bno;
	
	@Size(min=3, max=25)
	@NotBlank
	private String title;
	
	@NotBlank
	private String content;
	
	@NotBlank
	private String writer;
	private Date regdate;
}
