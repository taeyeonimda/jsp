<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = 'java.util.List, java.util.ArrayList'%>
<%@ page import = 'java.util.StringTokenizer'%>
<h3>장바구니</h3>
<a href = 'main.html'>메인</a>
<%
	request.setCharacterEncoding("utf-8");	
	
%>
<h3>장바구니</h3>
<%=session.getAttribute("cart") %>
