<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page import='com.oreilly.servlet.MultipartRequest'%>
<%@ page import='com.oreilly.servlet.multipart.DefaultFileRenamePolicy'%>
<%@ page import='org.apache.logging.log4j.LogManager'%>

<%
	String attachPath = "/ch08/attach";
 	int fileMaxSize = 1024*1024*5;//5mb
 	String enctype = "utf-8";
 	
 	ServletContext ctx = getServletContext();
 	attachPath = ctx.getRealPath(attachPath);
 	System.out.println("attachPath: "+attachPath);
 	
 	request.setCharacterEncoding("utf-8");
 	MultipartRequest multiRequest = null;
 	try{
 	multiRequest = new MultipartRequest(request,
 			attachPath, fileMaxSize, enctype, new DefaultFileRenamePolicy());
 
 	%>
 	
 	<% 
 	}catch(IOException e){
 		throw e;
 	}
 	request.setAttribute("title",multiRequest.getParameter("title"));
 	request.setAttribute("attachName", 
 			multiRequest.getFilesystemName("attachFile"));
 	
 %>
 <jsp:forward page = 'imgOut.jsp' />
 
