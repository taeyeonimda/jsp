<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='ch03.ex05.User' %>
<%
	application.setAttribute("user",new User("최한석",22));
	session.invalidate();
	%>
	<a href ='06.appB.jsp'>보기</a>