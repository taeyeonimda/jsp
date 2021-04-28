<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String userName = request.getParameter("userName");
	String nickName = request.getParameter("nickName");
	String age = request.getParameter("age");
	System.out.println("userName: " + userName);
	System.out.println("Age: " + age);

	if (userName == null)
		System.out.println("1");
	if (userName.equals(""))
		System.out.println("2");
	if (nickName == null)
		System.out.println("33");
	if (nickName.equals(""))
		System.out.println("44");
	if (age == null)
		System.out.println("11");
	if (age.equals(""))
		System.out.println("22");
%>
<%
	if (userName.equals("") || age.equals("")) {
%>
이름과 나이를 입력한 뒤, 제출 해주세요.
<a href='paraIn.html'>돌아가기</a>
<%
	} else {
%>
<%=userName%>:
<%=age%>살입니다.
별명:<%=nickName %>
<%
	}
%>