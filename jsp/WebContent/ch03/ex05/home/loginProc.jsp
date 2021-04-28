<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core' %>
<%
	session.getAttribute("user");
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
%>
<% if (userId.equals("java")&&userPwd.equals("java")){%>
	<%=session.getAttribute("user")%>
	<jsp:include page='logout.jsp'/>
<%}else{%>
	<c:redirect url='login.jsp?msg=input again'/>
<%}%>