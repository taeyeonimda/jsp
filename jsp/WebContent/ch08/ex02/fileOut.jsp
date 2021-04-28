<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page import='java.util.Map, java.util.HashMap'%>
<%@ page import='java.util.Set, java.util.HashSet'%>
<a href='main.html'>메인</a><hr>
<%
	Map<String, String> map = 
	(Map<String,String>)request.getAttribute("fileNames");

	Set<String>keys = map.keySet();
	for(String key: keys){
		
	
%>
<a href = '../attach/<%=key %>'download><%=map.get(key) %></a><br>
<%
	}
%>