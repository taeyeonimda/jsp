<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import='java.util.ArrayList,java.util.List'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>

<%
	request.setCharacterEncoding("utf-8");
	Object cartObj =session.getAttribute("cart");
	String[] prods = request.getParameterValues("prod");
	
	if(cartObj !=null && prods !=null){
		List<String> cart = (List<String>)cartObj;
		for(String products: prods)
		
				cart.remove(products);
			
	}
	
%>

<c:redirect url='cartOut.jsp' />