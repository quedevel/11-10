package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.zerock.domain.BoardVO;
import org.zerock.dto.PageDTO;
import org.zerock.loading.LoadingTests;

import lombok.extern.log4j.Log4j;

@Log4j
public class BoardMapperTests extends LoadingTests{

	@Autowired
	BoardMapper mapper;
	
	@Test
	public void testListSearch() {
		
		// 1 page 10 amount
		PageDTO dto = new PageDTO();
		dto.setPage(1);
		dto.setAmount(20);
		dto.setKeyword("a");
		dto.setType("T");
		List<BoardVO> list = null;
		(list = mapper.list(dto)).forEach(vo -> {
			log.info(vo);
		});
		
		log.info(list.size());
		log.info(dto);
		log.info(mapper.getCount(dto));
		
	}
	
	
	@Test
	public void insertTest() {
		BoardVO vo = new BoardVO();
		vo.setTitle("한글제목쓰");
		vo.setContent("한글 내용쓰");
		vo.setWriter("user00");
		log.info(mapper.insert(vo));
	}
	
	@Test
	public void listTest() {
		PageDTO dto = new PageDTO();
		log.info(mapper.list(dto));
	}
}
