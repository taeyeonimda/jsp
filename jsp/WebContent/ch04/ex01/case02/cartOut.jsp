<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='java.util.List, java.util.ArrayList' %>
<%@ page import = 'java.util.StringTokenizer' %>
<a href = 'main.html'>메인</a>
<h3>장바구니</h3>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies){
		if(cookie.getName().equals("cart")){
			String tmp =cookie.getValue();
			st= new StringTokenizer(tmp, "/");
			while(st.hasMoreTokens()) cart.add(st.nextToken());
		}
	}
%>
<ul>
	<%
		for (String product : cart) {
	%>
	<li><%=product%></li>
	<%
		}
	%>
</ul>