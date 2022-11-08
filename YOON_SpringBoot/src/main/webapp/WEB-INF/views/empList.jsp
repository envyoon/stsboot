<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="jumbotron text-center">
  <h2>사원정보조회</h2>

</div>
<div class="container">
	<form id="frm01" class="form-inline"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input class="form-control mr-sm-2" placeholder="사원명" 
	    	name="ename" value="${emp.ename}"/>
	    <input class="form-control mr-sm-2" placeholder="직책명" 
	    	name="job" value="${emp.job}"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button  data-toggle="modal" data-target="#exampleModalCenter" 
	    	class="btn btn-success" type="button" >등록</button>
 	</nav>
	</form>
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
    
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">사원정보등록</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm02" class="form" action="${path}/insertEmp.do"  method="post">
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="사원명 입력" name="ename">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" placeholder="직책명 입력" name="job">
	      </div>
	     </div>
	     <div class="row">
	      <div class="col">
	        <input type="date" class="form-control" placeholder="입사일 입력" name="hiredateS">
	      </div>
	      <div class="col">
	        <input type="number" class="form-control" placeholder="관리자 번호 입력" name="mgr"  value="0">
	      </div>
	     </div>
	     <div class="row">
	      <div class="col">
	        <input type="number" class="form-control" placeholder="급여 입력" name="sal" value="0">
	      </div>
	      <div class="col">
	        <input type="number" class="form-control" placeholder="보너스 입력" name="comm"  value="0">
	      </div>
	     </div>
	     <div class="row">
	      <div class="col">
	        <input type="number" class="form-control" placeholder="부서번호 입력" name="deptno"  value="0">
	      </div>
	     </div>	     	     	      
	    </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="regBtn" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    
</body>
</html>