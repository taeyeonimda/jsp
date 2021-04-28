<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
  
  

  <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
<script>
	function check() {
		var s = document.getElementById("id");
		alert("<%=request.getParameter("id")%>사용할수잇습니다");
	}
</script>
</head>
<body>
  <form action = 'NewFile.jsp' >
  	아이디<input type='text' name ='id' id='id'>
  	비번<input type ='password' name ='pwd' id='pwd'>
  	<button type ='submit'  onclick ='check()'>로그인</button>
  </form>
</body>
</html>
