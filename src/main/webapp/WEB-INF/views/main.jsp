<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<<<<<<< HEAD
<style>

</style>
=======

<style></style>
>>>>>>> origin/master
</head>
<body>
<<<<<<< HEAD
	<div id="wrap">
        <div id="header">
            <jsp:include page="header.jsp" />
        </div>
        
		<c:choose>
			<c:when test="${page eq '여행지정보'}">
				<div id="main">
            		<jsp:include page="locInfoList.jsp" />
        		</div>
			</c:when>
			<c:when test="${page eq '여행지후기'}">
				<div id="main">
            		<jsp:include page="review.jsp" />
        		</div>
			</c:when>
			<c:when test="${page eq '여행지경로'}">
				<div id="main">
            		<jsp:include page="routeList.jsp" />
        		</div>
			</c:when>
			<c:when test="${page eq '공지'}">
				<div id="main">
            		<jsp:include page="noticeList.jsp" />
        		</div>
			</c:when>
			<c:when test="${page eq '후기글쓰기'}">
				<div id="main">
            		<jsp:include page="reviewWriteForm.jsp" />
        		</div>
			</c:when>
			<c:otherwise>
				<div id="main">
            		<jsp:include page="home.jsp" />
        		</div>
			</c:otherwise>
		</c:choose>
		        
        
    </div>
=======
	
	<div>
		안녕하세요 ${sessionScope.loginId} 님 <a href="logout">로그아웃</a>
	</div>
<<<<<<< HEAD
	
	<!--소진-->
	<form action="register.jsp" method="post">
			<button onclick="location.href='register'">공지등록</button>
	</form>

	<button onclick="location.href='writeForm'" style="float: right">글쓰기</button>
	<table>
		<tr>
			<th></th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<c:forEach items="${list}" var="board">
		<tr>
			<td>${board.board_subject}</td>
			<td>${board.board_id}</td>
			<td>${board.reg_date}</td>
			<td>${board.hit}</td>
			<%-- <td><a href="delete?idx=${board.idx}">삭제</a></td> --%>
		</tr>
		</c:forEach>
	</table>
	
=======
	<a href="review">후기리스트</a>
>>>>>>> origin/master
>>>>>>> origin/master
</body>
<script></script>
</html>