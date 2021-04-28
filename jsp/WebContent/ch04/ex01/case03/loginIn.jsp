<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId ="";
	Cookie [] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie cookie: cookies){
			if(cookie.getName().equals("userId"))
				userId = cookie.getValue();
		}
	}
%>
<!DOCTYPE html>
<form action = 'loginProc.jsp' method ='post'>
	ID: <input type ='text' name = 'userId' value="" />
	PW: <input type ='password' name ='userPw' />
	<input type='checkbox' name = 'isStoreId ' value = 'true' />ID 저장
	<input type ='submit' value='로그인'>
</form>