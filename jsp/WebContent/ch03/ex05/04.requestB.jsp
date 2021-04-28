<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import='ch03.ex05.User'%>
<%
	User user = (User)request.getAttribute("user");
	user.setAge(32);
	%>
<jsp:forward page="04.requestC.jsp" />