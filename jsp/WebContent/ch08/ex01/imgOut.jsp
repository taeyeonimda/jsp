<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
  <a href = 'main.html'>메인</a><hr>
  제목: ${title}<br>
  <c:choose>
  	<c:when test = "${empty attachName }">
	이미지 없음
  	</c:when>
  	<c:otherwise>
  		<img src = '../attach/${attachName}'/>
  	</c:otherwise>
  </c:choose>