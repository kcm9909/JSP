<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NextIT</title>
</head>
<body>
 
 <!--로그아웃 처리  -->
 <%
 	session.removeAttribute("memberVO");
 	response.sendRedirect(request.getContextPath()+"/login/login.jsp");
 
 
 %>
</body>
</html>