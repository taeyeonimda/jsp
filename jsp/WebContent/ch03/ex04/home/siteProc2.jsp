<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'%>
<meta charset='utf-8' />
<%
    String site = request.getParameter("site");
	if(site ==null) site ="";
	
	switch(site){
	case "daum":
%>
		<c:redirect url ='https://www.daum.net/'/>
<%
	case "naver":
%>
		<c:redirect url ='https://www.naver.com/'/>
<%
	default:
%>
		<c:redirect url = 'siteIn.jsp?msg=choose again'/>
<% 
}%>

