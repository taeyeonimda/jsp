<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import ='java.util.ArrayList,java.util.List' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>

<%
	request.setCharacterEncoding("utf-8");
	String[] prods = request.getParameterValues("prod");

	if (prods != null) {
		List<String> cart = new ArrayList<>();
		for(String products: prods)
			cart.add(products);
			session.setAttribute("cart",cart);
		}
%>

<c:redirect url ='cartOut.jsp' />