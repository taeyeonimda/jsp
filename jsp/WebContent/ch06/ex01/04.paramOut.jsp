<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%request.setCharacterEncoding("utf-8"); %>
<p>
${param.userId =="java" ? param.userId : "손님"},환영합니다.
</p>
<p>
	${param.num1}+${param.num2}=${param.num1+param.num2}
</p>
<p>
${param.submitDay }
</p>
<p>
	<c:forEach var = 'season' items='${paramValues.season }'>
	${season}<br>
	</c:forEach>
</p>