<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<a href = 'main.html'>메인</a>

<%
	Cookie cookie1 = new Cookie("name","John");
	Cookie cookie2 = new Cookie("age","22");
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>	