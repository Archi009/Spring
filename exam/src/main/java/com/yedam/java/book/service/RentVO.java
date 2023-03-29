package com.yedam.java.book.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class RentVO {
	private int rentNo;
	private int bookNo;
	private int rentPrice;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date   rentDate;
	
//	join 후에 필요한 컬럼명
	private String bookName;
	private int rentStatus;
	private int sumPrice;
	private int rentCount;
}
