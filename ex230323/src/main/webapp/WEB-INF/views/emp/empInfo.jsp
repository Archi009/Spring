<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<meta charset="UTF-8">
<title>상세조회</title>
</head>
<body>
<!-- 비동기 통신에서는 form태그를 사용하기 좀 그렇지만 javascript에서 데이터를 주고 받기에 가장 쉬워서 사용해 본다. -->
<!-- 페이지의 이동을 막기 위해 onSubmit을 사용한다. -->
	<form action="empUpdate" method="post" onSubmit="return false" >
		<div>
			<label>
				id: <input type="text" name="employeeId" value="${empInfo.employeeId }" readonly>
			</label>
		</div>
		<div>
			<label>
				first_name: <input type="text" name="firstName" value="${empInfo.firstName }" >
			</label>
		</div>
		<div>
			<label>
				last_name: <input type="text" name="lastName" value="${empInfo.lastName }" >
			</label>
		</div>
		<div>
			<label>
				email: <input type="text" name="email" value="${empInfo.email }" >
			</label>
		</div>
		<div>
			<label>
				phone_number: <input type="text" name="phoneNumber" value="${empInfo.phoneNumber }" >
			</label>
		</div>
		<div>
			<label>
				hire_date: <input type="date" name="hireDate" value='<fmt:formatDate value="${empInfo.hireDate }" pattern="yyyy-MM-dd" />' >
			</label>
		</div>
		<div>
			<label>
				job_id: <input type="text" name="jobId" value="${empInfo.jobId }" >
			</label>
		</div>
		<div>
			<label>
				salary: <input type="text" name="salary" value="${empInfo.salary }" >
			</label>
		</div>
		<div>
			<label>
				commission_pct: <input type="text" name="commissionPct" value="${empInfo.commissionPct }" >
			</label>
		</div>
		<div>
			<label>
				manager_id: <input type="text" name="managerId" value="${empInfo.managerId }" readonly>
			</label>
		</div>
		<div>
			<label>
				department_id: <input type="text" name="departmentId" value="${empInfo.departmentId }" readonly>
			</label>
		</div>
		<button type="submit">수정</button>
		<button type="button">취소</button>
	</form>
</body>
<script>
	fetch('empUpdate',{
		method : 'post',
		headers : {
			'Context-Type': 'application/json'			
		},
		body : convertData();
	})
	.then(response => response.json())
	.then(date => console.log(data))
	.catch(reject => console.log(reject));
	
	
	
	function convertData(){
		let selectForm = document.querySelector('form');
		
		let formData = new FormData(selectForm);
		
		
	}
	
	
	
</script>
</html>