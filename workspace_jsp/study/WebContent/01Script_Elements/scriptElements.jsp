<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
NextIT

<!--  선언부 -->
<%!
     int a = 10;
     int b = 20;
     
     public int add(int a, int b) {
    	 return a + b;
     }

%>


<!-- 스크립트릿 ( 값 출력 ) -->
1차 add :<%= add(a, b)  %>

<!--  표현식 -->
<%
    a = a+10;
    b = b+10;
    
    int sum = 0;
    for(int i=0; i<=10; i++) {
    	sum += i;
    }

%>

<br> 2차 add : <%= add(a,b) %>
<br> 3차 sum L <%= sum %>
</body>
</html>