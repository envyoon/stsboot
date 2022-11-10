<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMP INSERT</title>

<script type="text/javascript">
	
	$(document).ready(function(){
	
		$("#insbtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				$("#insfrom").submit(); 
			}
		});
		
	});
	
</script>

</head>
<body>

// INSERT INTO STSBOOT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
// VALUES(#{empno}, #{ename}, #{job}, #{mgr}, #{hiredate}, #{sal}, #{comm}, #{deptno})
	<div class="modal-body">
			<form id="insfrom" class="form" action="${path}/insertEmp"  method="post">
			<!-- EMPNO, ENAME -->
		     <div class="row">
		      	<div class="col">
		       		 <input type="text" class="form-control" placeholder="EMPNO" name="empno">
		      	</div>
		      	<div class="col">
		        	<input type="text" class="form-control" placeholder="ENAME" name="ename">
		      	</div>
		     </div>
		     
		     <!-- JOB, MGR -->
		     <div class="row">
		      	<div class="col">
		       		 <input type="text" class="form-control" placeholder="JOB" name="job">
		      	</div>
		      	<div class="col">
		       		 <input type="text" class="form-control" placeholder="MGR" name="mgr">
		      	</div>
		     </div>
		     
		     <!-- HIREDATE, SAL -->
		     <div class="row">
		      	<div class="col">
		       		 <input type="text" class="form-control" placeholder="HIREDATE" name="hiredate">
		      	</div>
		      	<div class="col">
		        	<input type="text" class="form-control" placeholder="SAL" name="sal">
		      	</div>
		     </div>
		     
		     <!-- COMM, DEPTNO -->
		     <div class="row">
		      	<div class="col">
		       		 <input type="text" class="form-control" placeholder="COMM" name="comm">
		      	</div>
		      	<div class="col">
		        	<input type="text" class="form-control" placeholder="DEPTNO" name="deptno">
		      	</div>
		     </div>
	    	     	      
		    </form> 
	      </div>
	      <div class="modal-footer">
	        <button type="button" id="insbtn" class="btn btn-primary">등록</button>
	      </div>
	    
</body>
</html>