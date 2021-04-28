<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul>
	<li>${user }</li>
	<li>${user.userName }</li>
	<li>${pageScope.user.userName}</li>
	<li>${requestScope.user.userName }</li>
	<li>${sessionScope.user.userName}</li>
	<li>${applicationScope.user.userName }</li>
</ul>