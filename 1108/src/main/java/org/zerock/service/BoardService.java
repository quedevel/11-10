package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.dto.PageDTO;

public interface BoardService {

	public boolean register(BoardVO vo);
	public List<BoardVO> getList(PageDTO dto);
	public int listCount(PageDTO dto);
	public BoardVO findByBno(Integer bno);
	
}
