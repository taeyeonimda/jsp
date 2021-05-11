<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = request.getParameter("userName");
%>
<% if(userName.equals("user")){ %>
<%=userName%>님 환영합니다<br>
<%}else{ %>
user아님

<%}%>