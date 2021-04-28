<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset='utf-8'/>
<form action ='siteProc2.jsp'  method='post' >
	<input type ='radio' name ="site" value="daum" >다음
	<input type ='radio' name ="site" value="naver">네이버
	<button type='submit'>제출</button>
</form>
<%
	request.setCharacterEncoding("utf-8");
	String msg = request.getParameter("msg");
	if (msg != null)
		out.println(msg);
%>


