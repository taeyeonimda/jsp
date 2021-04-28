<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>

<%
	String[] wishProds = request.getParameterValues("wishProd");
		
	String products = "";
	for(String product:wishProds) products +=product+"/";
	Cookie cookie = new Cookie("cart",products);
	cookie.setMaxAge(60*60*24*365);
	response.addCookie(cookie);
	%>
	<c:redirect url='cartOut.jsp' />
