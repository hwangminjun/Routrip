<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<<<<<<< HEAD
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
=======
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/review.jsp
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/reviewList.jsp
=======
=======
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
>>>>>>> origin/master:src/main/webapp/WEB-INF/views/reviewList.jsp

>>>>>>> 3bb61dba130f1d6811b3b6c6e823fe2c7260acbd:src/main/webapp/WEB-INF/views/review.jsp
>>>>>>> origin/master
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
<script src="resources/js/jquery.twbsPagination.js"></script>
<style>
	table, th, tr, td{
		border: 1px solid black;
		border-collapse: collapse;
		padding: 5px 10px;
	}
</style>
</head>
<body>
<<<<<<< HEAD

<button onclick="revieWriteCheck();">글쓰기</button>
=======
<!-- <button onclick="location.href='./reviewWriteForm'">글쓰기</button> -->

<button onclick="reviewWriteCheck();">글쓰기</button>

>>>>>>> origin/master

	<table>
		<thead>
			<tr>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>좋아요</th>
			</tr>
		</thead>
		<tbody id="reviewList">
		
		</tbody>
		<tr>
			<td colspan="5" id="paging">
				<div>
					<nav aria-label="Page navigation" style="text-align:center">
						<ul class="pagination" id="pagination"></ul>
					</nav>
				</div>
			</td>
		</tr>
	</table>
	
	
	
</body>
<script>

<<<<<<< HEAD

=======
>>>>>>> origin/master
var showPage = 1;
	reviewListCall(showPage);
	
	var loginId = "${sessionScope.loginId}";
<<<<<<< HEAD
	function revieWriteCheck(){
		if(loginId == ""){
			alert("로그인이 필요한 서비스 입니다.");
			location.href='./whatPage?page=로그인폼';
		}else{
			location.href='./whatPage?page=후기글쓰기';
		}
	}
	
=======
	
 	 function reviewWriteCheck() {
		 	//console.log(loginId);
				if(loginId == ""){
					alert("로그인이 필요한 서비스 입니다.");
					location.href='./whatPage?page=여행지정보';
				}else {
					location.href='./whatPage?page=후기글쓰기';
				}			
		} 
 	 
>>>>>>> origin/master
	function reviewListCall(page){
		$.ajax({
			type:'get',
			url:'reviewListCall',
			data:{page:page},
			dataType:"JSON",
			success:function(data){
				console.log(data.total);
				drawList(data.list);
				$("#pagination").twbsPagination({
					startPage:1,
					totalPages:data.total,
					visiblePages:5,
					onPageClick:function(e, page){
						console.log(e);
						console.log(page);
						reviewListCall(page);
					}
				});
			},
			error:function(e){
				console.log(e);
			}
		});
	}
	
	function drawList(list){
		var content="";
		for(var i=0;i<list.length;i++){
			//console.log(list[i]);
			content += "<tr>";
			content += "<td>";
			content += "<a href='reviewDetail?board_idx="+list[i].board_idx+"'>"+list[i].board_subject+"</a>"
			content += "</td>";
			content += "<td>"+list[i].id+"</td>";
			var date = new Date(list[i].reg_date);
			content += "<td>"+date.toLocaleDateString('ko-KR')+"</td>";
			content += "<td>"+list[i].hit+"</td>";
			content += "<td>0</td>";
			content += "</tr>";
		}
		$("#reviewList").empty();
		$("#reviewList").append(content);
	}
	

	
	
</script>
</html>