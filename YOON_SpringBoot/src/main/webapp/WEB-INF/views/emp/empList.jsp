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

<script>

function goDetail(empno){
	// get방식으로 상세화면 이동..
	location.href="${path}/empDetail?empno="+empno;	
}

</script>


</head>
<body>

<div class="jumbotron text-center">
  <h2>사원정보조회</h2>

</div>

<div class="container">

   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
    <thead>
      <tr class="table-success text-center">
        <th>사원번호</th>
        <th>사원명</th>
        <th>직책명</th>
        <th>급여</th>
        <th>부서번호</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="emp" items="${emplist}">
	    	<tr ondblclick="goDetail(${emp.empno})">
	    		<td>${emp.empno}</td>
	    		<td>${emp.ename}</td>
	    		<td>${emp.job}</td>
	    		<td><fmt:formatNumber value="${emp.sal}"/></td>
	    		<td>${emp.deptno}</td>
	    	</tr>
    	</c:forEach>
    </tbody>
	</table>    
    
    <form action="">
    	<input type='button' value='등록하기'/>
    </form>
    
</div>

    
</body>
</html>