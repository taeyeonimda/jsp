<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='ch03.ex05.User' %>
<%
	pageContext.setAttribute("user" ,new User("최한석",12));
%>
<%=pageContext.getAttribute("user") %>
	