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

<!-- Vue CDN -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<link rel="stylesheet" href="resources/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="resources/a00_com/jquery-ui.css" >
<style type="text/css">
	.input-group-text{width:100%;background-color:linen;color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
</style>

<script>

/* function goDetail(empno){
	// get방식으로 상세화면 이동..
	location.href="${path}/empDetail?empno="+empno;	
}

function insertPage(){
	
	location.href="${path}/empInsertPage";	
} */

</script>


</head>
<body>


<div class="jumbotron text-center">
  <h2>{{title}}</h2>

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
    	<tr v-for="(emp, idx) in empList">
    		<td>{{emp.empno}}</td>
    		<td>{{emp.ename}}</td>
    		<td>{{emp.job}}</td>
    		<td>{{emp.sal}}</td>
    		<td>{{emp.deptno}}</td>
    	</tr>
    </tbody>
	</table>    
    
    <div class="modal-footer">
	        <button type="button"  onclick="insertPage()">등록하기</button>
	</div>
    
</div>

    
</body>
<script>
	var vm = new Vue({
		el:".container",
		data:{title:"EMP LIST SAMPLE"},empList:[],isProcess:false,emp:{},empno:0},
		methods:{
			detail:function(){
				var vm = this;
				$.ajax({
					url:"${path}/empDetail"
					data:"empno="+vm.empno,
					dataType:"json",
					success:function(data){
						vm.emp = data.emp;
						var date = new Date(data.emp.hiredate);
						console.log(date.toLocaleString());
						vm.emp.hiredate = date.toLocaleString();
						console.log(vm.emp.hiredate);
					},
					error:function(err){
						console.log(err);
					}
				})
			},
		}
	})
</script>


</html>