package com.yedam.spring.emp.service;

import java.util.List;
import java.util.Map;

public interface EmpService {
	//전체 조회
	public List<EmpVO> getEmpAll();
	
	//단건 조회
	public EmpVO getEmp(EmpVO empVO);
	
	//등록
	public int insertEmp(EmpVO empVO);
	
	//수정
	//급여 갱신
	public String updateEmpSal(int empId, int raise);
	
	//회원정보 수정
	public Map<String, String> updateEmp(EmpVO empVO);
		
	//삭제
	public Map<String, String> deleteEmp(int empId);
	
}
