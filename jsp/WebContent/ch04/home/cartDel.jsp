<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='java.util.List, java.util.ArrayList' %>
<%@ page import = 'java.util.StringTokenizer' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ page import = 'java.util.Arrays' %>
<%@ page import ='java.net.URLDecoder' %>
<%@ page import ='java.net.URLEncoder' %>
<a href = 'main.html'>메인</a>
<h2>쿠키삭제</h2>

<%
	String[] wishProds = request.getParameterValues("wishProd");
	
	String products = "";
	for(String product:wishProds) products +=product+"/";
	Cookie delCookie = new Cookie("cart",products);
	delCookie.setMaxAge(0);
	response.addCookie(delCookie);
%>




<%--
	Cookie[]cookies = request.getCookies();
if(cookies != null && cookies.length>0){
	for(int i=0; i<cookies.length;i++){
		if(cookies[i].getName().equals("cart")){
			Cookie cookie = new Cookie("cart","");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
 
		}
		}
	}
--%>









<%--
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies){
		if(cookie.getName().equals("cart")){
			String tmp = cookie.getValue();
			st= new StringTokenizer(tmp, "/");
			while(st.hasMoreTokens()) cart.remove(st.nextToken());
		}
	}
--%>










<%--쿠키삭제하기 --%>
<%--
	String[] wishProds = request.getParameterValues("wishProd");
	
	String products = "";
	for(String product:wishProds) products +=product+"/";
	Cookie delCookie = new Cookie("cart",products);
	delCookie.setMaxAge(0);
	response.addCookie(delCookie);
--%>






<%--
Cookie[]c = request.getCookies();
	쿠키값 불러오기
--%>

<%-- 특정 쿠키가져오기
<%
Cookie[]c = request.getCookies();
String cookieName = "cart";
int cookieFind= -1;
for(int i =0; i<c.length;i++){
	if(c[i].getName().equals(cookieName)){
		cookieFind = i;
		break;
	}
}
if(cookieFind !=-1){

%>
<%=c[cookieFind].getValue() %>
<% }%>


쿠키가져오기 
<%
Cookie[]ca = request.getCookies();
for(int i =0; i<c.length;i++){

	
%>
<%=ca[i].getName() %> : <%=ca[i].getValue() %>
<% }%>

--%>
