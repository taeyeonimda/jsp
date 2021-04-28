<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul>
	<li><%=pageContext.getAttribute("page")%></li>
	<li><%=request.getAttribute("request")%></li>
	<li><%=session.getAttribute("session")%></li>
	<li><%=application.getAttribute("application")%></li>
</ul>