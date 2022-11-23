<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMP LIST SAMPLE</title>

<!-- 제이쿼리 CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script>
	
	
	$(document).ready(function(){
		
		$("#goBack").click(function(){
			location.href="${path}/empList";
		});
		
		
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","${path}/uptEmp");
				$("form").submit();
				console.log("동작함")
			}
		}); 
		
		
				
		
		
	});
	
</script>


</head>
<body>

<div class="jumbotron text-center">
  <h2>사원정보상세</h2>

</div>

<div class="container">

	<form method="post">
	   <table class="table table-hover table-striped">
	   	
	    <thead>
	      <tr class="table-success text-center">
	        <th>사원번호</th> <td>${emp.empno}</td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>사원명</th> <td><input type="text" name="ename" value=${emp.ename}></td>
	      </tr>
		  <tr class="table-success text-center">
	        <th>직책명</th> <td><input type="text" name="job" value=${emp.job}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>MGR</th> <td><input type="text" name="mgr" value=${emp.mgr}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>입사날짜</th> <td><fmt:formatDate var="hiredate" value="${emp.hiredate}"/></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>급여</th> <td><input type="text" name="sal" value=${emp.sal}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>COMM</th> <td><input type="text" name="comm" value=${emp.comm}></td>
	      </tr>
	      <tr class="table-success text-center">
	        <th>부서번호</th> <td><input type="text" name="deptno" value=${emp.deptno}></td>
	      </tr>
	    </thead>	
		</table>    
	    
	    <!-- 
	    <div class="modal-footer">
		        <button type="button" id="goBack" onclick="goBack()">뒤로가기</button>
		        <button type="button" id="uptBtn" onclick="uptBtn()">수정하기</button>
		</div>
		 -->
		 
	    <div style="text-align:left;">
			<input type="button" class="btn btn-info" value="뒤로가기" id="goBack"/>
			<input type="button" class="btn btn-info" value="수정하기" id="uptBtn"/>		
		</div>
		
	</form>
   
</div>

    
</body>
</html>