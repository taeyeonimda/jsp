<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import='ch03.ex05.home.User'%>
<%
	session.setAttribute("user",new User("java","java"));
%>

<form action='loginProc.jsp' method='post'>
	ID: <input type='text' name='userId'> 
	PW: <input type='password' name='userPwd'> 
	<input type='submit'>
</form>
<%
	String msg = request.getParameter("msg");
	if (msg != null)
		out.println(msg);
%>