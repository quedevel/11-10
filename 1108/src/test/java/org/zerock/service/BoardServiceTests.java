package org.zerock.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.zerock.dto.PageDTO;
import org.zerock.loading.LoadingTests;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
public class BoardServiceTests extends LoadingTests {
	
	@Setter(onMethod_ = {@Autowired})
	BoardService service;
	
	@Test
	public void listServiceTest() {
		
		PageDTO dto = new PageDTO();
		dto.setPage(1);
		dto.setAmount(10);
		dto.setType("T");
		dto.setKeyword("a");
		log.info(service.getList(dto));
	}
	

}
