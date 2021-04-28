<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<a href = 'main.html'>메인</a>

<%
	Cookie cookie = new Cookie("age","34");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>	