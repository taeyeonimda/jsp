<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix='c' uri = 'http://java.sun.com/jsp/jstl/core'%>
<%
	request.setCharacterEncoding("utf-8");

String products="";
Cookie[]cookies= request.getCookies();
for(Cookie cookie: cookies)
	if(cookie.getName().equals("cart"))
		products = cookie.getValue();

String[] prods =request.getParameterValues("prod");
if(prods != null)
	for(String prod: prods)
		products = products.replace(prod+"/","");

Cookie cookie = new Cookie("cart",products);
response.addCookie(cookie);
%>
<c:redirect url='cartOut.jsp'/>