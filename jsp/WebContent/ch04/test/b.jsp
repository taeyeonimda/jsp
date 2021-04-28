<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] al = request.getParameterValues("al");
for(int i =0; i<al.length;i++){
	System.out.println(al[i]);

%>
<%=al[i] %>
<%}%>