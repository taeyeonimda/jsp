<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String numStr = request.getParameter("num");
	int num = 0;
	try {
		num = Integer.parseInt(numStr);
		out.println(num);
	} catch (NumberFormatException e) {
		response.sendRedirect("numIn.html");
	}
%>
