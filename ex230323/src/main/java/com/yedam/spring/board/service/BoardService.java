package com.yedam.spring.board.service;

import java.util.List;

public interface BoardService {
	
//	전체조회
	public List<BoardVO> getBoardList();
//	상세
	public BoardVO getBoardInfo(BoardVO boardVO);
//	등록하고자 하는 글 번호
	public BoardVO getBoardNumber();
//	글작성
	public int insertBoardInfo(BoardVO boardVO);
//	수정
	public int updateBoardInfo(BoardVO boardVO);
//	삭제
	public int deleteBoardInfo(int boardNo);
	
	
}
