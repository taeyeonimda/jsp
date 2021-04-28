<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
    <%
    	String userId = request.getParameter("userId");
    %>
    <p><%=userId %>님 환영합니다.</p>
    <a href = 'loginoutProc.jsp'>로그아웃</a>