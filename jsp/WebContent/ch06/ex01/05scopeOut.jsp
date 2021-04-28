<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ol>
	<li>${scope}</li>
	<li>${pageScope.scope }</li>
	<li>${requestScope.scope}</li>
	<li>${sessionScope.scope}</li>
	<li>${applicationScope.scope}</li>
</ol>

<ul>
	<li>${scope}</li>
	<li>${pagescope.scope }</li>
	<li>${requestscope.scope}</li>
	<li>${sessionscope.scope }</li>
	<li>${application.scope }</li>
</ul>