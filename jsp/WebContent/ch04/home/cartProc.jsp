<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = 'java.util.ListIterator' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<a href = 'main.html'>메인</a>
<%
String[] prod = request.getParameterValues("prod");
String products ="";
for(String product:prod) products +=product+"/";
Cookie cookie = new Cookie("cart",products);
session.setAttribute("cart",products);
cookie.setMaxAge(60*60*24*365);
response.addCookie(cookie);
%>
<c:redirect url='cartOut.jsp' />

