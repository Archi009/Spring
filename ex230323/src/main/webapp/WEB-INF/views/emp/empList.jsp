<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 조회</title>
</head>
 	<style>
 		table, tr,th, td{
 		border : 1px solid black;
 		}
 	</style>
<body>
	<table>
		<thead>
			<tr>
				<th>employee_id</th>
				<th>first_name</th>
				<th>last_name</th>
				<th>email</th>
				<th>hire_date</th>
				<th>job_id</th>
				<th>salary</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${empList }" var="emp">
				<tr>
					<td>${emp.employeeId }</td>
					<td>${emp.firstName }</td>
					<td>${emp.lastName }</td>
					<td>${emp.email }</td>
					<td>${emp.hireDate }</td>
					<td>${emp.jobId }</td>
					<td>${emp.salary }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<script>
	function printAlert(message){
		alert(message);	
	}
// 	jsp는 자바가 먼저 해석 되기 때문에 아래 jstl 태그를 사용 가능하다.
// 	but 권장하지 않는다 서로 다른 코드를 섞어버리면 컴파일 순서가 달라 원하는 
// 	방식으로 실행이 안 되는경우도 있다 onClick:function도 마찬가지이다.
	printAlert(`${result}`);
</script>
</body>
</html>