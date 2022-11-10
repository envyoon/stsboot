<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
	function goBack(){
		// get방식으로 상세화면 이동..
		location.href="${path}/empList";	
	}
	
	
	
</script>


</head>
<body>

<div class="jumbotron text-center">
  <h2>사원정보상세</h2>

</div>

<div class="container">

   <table class="table table-hover table-striped">
   	
    <thead>
      <tr class="table-success text-center">
        <th>사원번호</th> <td>${emp.empno}</td>
      </tr>
      <tr class="table-success text-center">
        <th>사원명</th> <td>${emp.ename}</td>
      </tr>
	  <tr class="table-success text-center">
        <th>직책명</th> <td>${emp.job}</td>
      </tr>
      <tr class="table-success text-center">
        <th>MGR</th> <td>${emp.mgr}</td>
      </tr>
      <tr class="table-success text-center">
        <th>입사날짜</th> <td><fmt:formatDate value="${emp.hiredate}"/></td>
      </tr>
      <tr class="table-success text-center">
        <th>급여</th> <td><fmt:formatNumber value="${emp.sal}"/></td>
      </tr>
      <tr class="table-success text-center">
        <th>COMM</th> <td>${emp.comm}</td>
      </tr>
      <tr class="table-success text-center">
        <th>부서번호</th> <td>${emp.deptno}</td>
      </tr>
    </thead>	
	</table>    
    
    <div class="modal-footer">
	        <button type="button" id="goBack" onclick="goBack()">뒤로가기</button>
	</div>
    
</div>

    
</body>
</html>