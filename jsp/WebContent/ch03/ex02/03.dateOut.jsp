<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
		String text = request.getParameter("text");
		String number = request.getParameter("number");
		String date = request.getParameter("date");
		String radio = request.getParameter("radio");
		String checkbox = request.getParameter("checkbox");
		
		System.out.printf("%s	%s	%s	%s	%s\n",text,number,date,radio,checkbox);
		%>
		<ul>
			<li>text: <%=text %></li>
			<li>number: <%=number %></li>
			<li>date: <%=date %></li>
			<li>radio: <%=radio %></li>
			<li>checkbox: <%=checkbox %></li>
		</ul>
		