<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>

<%
	request.setCharacterEncoding("utf-8");
	String[] prods = request.getParameterValues("prod");

	if (prods != null) {
		String products = "";
		for (String prod : prods) products += prod + "/";

		Cookie cookie = new Cookie("cart", products);
		cookie.setMaxAge(60 * 60);
		response.addCookie(cookie);
	}
%>
<c:redirect url ='cartOut.jsp' />