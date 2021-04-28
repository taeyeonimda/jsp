<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = 'java.util.List, java.util.ArrayList'%>
<%@ page import = 'java.util.StringTokenizer'%>
<a href = 'main.html'>메인</a>
<%
	request.setCharacterEncoding("utf-8");	
	
	List<String> cart = new ArrayList<>();
	
%>
<h3>장바구니</h3>
<%=session.getAttribute("cart") %>



<%-- <form action='cartProc.jsp'>
<ul>

<li><%=session.getAttribute("cart")%></li>
</ul>
<%--%>
