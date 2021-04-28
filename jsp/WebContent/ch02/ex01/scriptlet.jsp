<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- out.write("<!DOCTYPE html>\r\n");  -->
<%
	//scriptlet
	int num1 = 3;
	int num2 = 2;
%>
<h2>더하기</h2>
<%-- expression --%>
<%= num1 %>+<%= num2 %>=<%= num1+num2 %>

<!-- C:\DEV\deploy\work\Catalina\localhost\jsp\org\apache\jsp\ch02\ex01 -->