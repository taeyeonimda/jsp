<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page import='com.oreilly.servlet.MultipartRequest'%>
<%@ page import='com.oreilly.servlet.multipart.DefaultFileRenamePolicy'%>
<%@ page import = 'java.util.Enumeration'%>
<%@page import="java.util.Map, java.util.HashMap"%>
<%@page import="java.io.IOException"%>


<%
	String attachPath = "/ch08/attach";
 	int fileMaxSize = 1024*1024*5;//5mb
 	String enctype = "utf-8";
 	
 	ServletContext ctx = getServletContext();
 	attachPath = ctx.getRealPath(attachPath);
 	
 	MultipartRequest mRequest = null;
 	try{
 	mRequest = new MultipartRequest(request,
 			attachPath, fileMaxSize, enctype, new DefaultFileRenamePolicy());
 
 	%>
 	
 	<% 
 	}catch(IOException e){
 		throw e;
 	}
 	
 	String fileName = null;
 	Map<String, String>map = new HashMap<>();
 	Enumeration<String> fileNames = mRequest.getFileNames();
 	
 	while(fileNames.hasMoreElements()){
 		fileName = fileNames.nextElement();
 		map.put(mRequest.getFilesystemName(fileName),
 				mRequest.getOriginalFileName(fileName));
 	}
 	request.setAttribute("fileNames", map);
 	
 	%>
 	<jsp:forward page = 'fileOut.jsp'/>