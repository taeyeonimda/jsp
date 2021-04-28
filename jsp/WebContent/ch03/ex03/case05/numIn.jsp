<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action='numProc.jsp'>
	<input type='text' name='num' />
	<button type='submit'>제출</button>
</form>
<%
	String msg = request.getParameter("msg");
	if(msg !=null && !msg.equals(""));
%>