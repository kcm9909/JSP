<!--  errorPage01 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR</title>
</head>
<body>

문제가 발생하였습니다.
<br>
문제가 계속 되면 고객센터에 문의해주시기 바랍니다. 042 -719 - 8850

<%
	System.out.println("예외 클래스:" + exception.getClass().getName());
	System.out.println("예외 내용:" + exception.getMessage() );

%>


</body>
</html>