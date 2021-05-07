<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String id = request.getParameter("id");
	String msg = "";

	if(id =="user"){
		msg ="user";
	}else{
		msg="user가 아닙";
	}
%>
