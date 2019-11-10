package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.dto.PageDTO;
import org.zerock.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper mapper;
	
	@Override
	public boolean register(BoardVO vo) {
		return mapper.insert(vo) == 1? true:false;
	}

	@Override
	public List<BoardVO> getList(PageDTO dto) {
		return mapper.list(dto);
	}

	@Override
	public int listCount(PageDTO dto) {
		return mapper.getCount(dto);
	}

	@Override
	public BoardVO findByBno(Integer bno) {
		return mapper.selectByBno(bno);
	}
	
}
