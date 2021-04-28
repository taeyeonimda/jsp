<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import='java.util.List, java.util.ArrayList'%>
<%@ page import='java.util.StringTokenizer'%>
<h3>장바구니</h3>
<a href='main.html'>메인</a>
<%
	Object cartObj = session.getAttribute("cart");

	if(cartObj !=null){
		List<String> cart = (List<String>)cartObj;
		if(cart.size()>0){
			%>
<form action='cartDelProc.jsp' method='post'>
	<ul>
		<%
			for(String product: cart){
				%>
		<li><%=product %><input type='checkbox' name='product'
			value='<%=product %>' /></li>
		<% 
			}
		%>
	</ul>
	<button type='submit'>물건 빼내기</button>
</form>
<%
		}
		
	}else out.println("물건이 없습니다");
	%>

