<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("page", "페이지");
	request.setAttribute("request","리퀘스트");
	session.setAttribute("session","세션");
	application.setAttribute("application","어플");
	%>
	<jsp:forward page='01.scopeOut.jsp' />