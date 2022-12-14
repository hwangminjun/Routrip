<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
	table, tr, td {
		border: 1px solid black;
		border-collapse: collapse;
		padding: 5px 10px;
	}
</style>
</head>
<body>
	<form action="login" method="post">
		<table>
			<tr>
				<th>ID</th>
				<td><input type="text" name="id" value="${id}"></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" name="password" value="${password}"></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="LOGIN">
					<!-- Spring에서는 jsp페이지로 직접 이동이 금지된다.(보안상의 이유로 반드시 컨트롤러를 거쳐야 한다.) -->
					<input type="button" value="회원가입" onclick="location.href='joinForm'">
				</th>
			</tr>
		</table>
	</form>
</body>
<script>
	var msg = "${msg}";
	if(msg != ""){
		alert(msg);
	}
</script>
</html>