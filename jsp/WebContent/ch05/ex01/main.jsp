<%@ page language="java" 
contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='ch05.ex01.service.TodayService' %>
<%@ page import ='ch05.ex01.service.TodayServiceImpl' %>
<%
		TodayService todayService = new TodayServiceImpl();
%>
<%=todayService.now() %>