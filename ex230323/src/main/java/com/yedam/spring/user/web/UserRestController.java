package com.yedam.spring.user.web;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yedam.spring.user.UserVO;


@CrossOrigin  //혹시 몰라서 붙여놓음, 이거 뭔지 모름 cors에러
@RestController //데이터를 반환하는 컨트롤러
public class UserRestController {
//	                  경로                  방식
	@RequestMapping(value="/insertUser", method=RequestMethod.POST)
	public UserVO insertUser(UserVO userVO) {
		
		System.out.println("name : "+ userVO.getName());
//		System.out.println("country : "+ userVO.getCountry());
		System.out.println("age : "+ userVO.getAge());
		System.out.println("date : "+ userVO.getToday());
		
		return userVO;
	}
	
}
