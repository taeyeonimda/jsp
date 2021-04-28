<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String userName = request.getParameter("userName");
	String age = request.getParameter("age");
	String birthday = request.getParameter("birthday");
	
%>
<h3>정보</h3>
<ul>
	<li>이름: <%=userName %></li>
	<li>나이: <%=age %></li>
	<li>생일: <%=birthday %></li>
</ul>