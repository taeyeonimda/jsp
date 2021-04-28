<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
\${5+2}: ${5+2}<br>
\${5>2}: ${5>2}<br>
\${(5>2)?5:2:} ${(5>2)?5:2}<br>

1:${userName} , ${empty userName}
<%
	pageContext.setAttribute("userName","최한석");

%>
2: ${userName}, ${empty userName}