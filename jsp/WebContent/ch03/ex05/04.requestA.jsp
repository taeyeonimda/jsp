<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='ch03.ex05.User' %>
<%
	request.setAttribute("user",new User("최한석",12));
%>
<jsp:forward page = '04.requestB.jsp' />