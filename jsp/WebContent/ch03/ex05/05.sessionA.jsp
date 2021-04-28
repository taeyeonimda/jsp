<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='ch03.ex05.User'%>
<a href = '05.main.jsp'>Home</a>
<%
	session.setAttribute("user",new User("최한석",22));
	%>