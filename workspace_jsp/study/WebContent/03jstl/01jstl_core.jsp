<!-- 01jstl_core -->
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
NextIT

<%
	MemberVO member = new MemberVO();
	member.setMemId("nextit1");
	member.setMemPass("042");
	member.setMemNm("넥스트아이티");
	
	request.setAttribute("member", member);
%>

<!--방법1 스크립트 요소로 해보기   -->
<%
	if(member.getMemId() != null) {
		
%>
	<p><%=member.getMemId() %></p>
<%
	}else{	
%>
		<p>로그인 하셔야 합니다. </p>
<%
	}

%>


<!--방법2 EL + JSTL 으로 사용해보기  -->
<c:choose>
	<c:when test=" ${               ! empty member.memId    }">
		<p>${member.memId }</p>	
	</c:when>
	<c:otherwise>
		<p> 로그인 하셔야 합니다 </p>
	
	</c:otherwise>
</c:choose>

<hr>
<!-- c:set , c:out -->
<c:set var ="price" value ="${5000*3}"/>
	<p>Before : <c:out value="${price}"/></p>
	<p>after : ${price }</p>
	
	
<hr>
<!-- c:remove, c:out -->
<c:remove var="price"/>
<p> remove : <c:out value="${price}"/>

<hr>
<!-- c:choose, c:when, c:otherwise -->
<c:set var ="cost" value="${7000}"/>
<c:choose>
	<c:when test="${ cost>10000 }">
		<p> 제품 가격 : 10000이상 입니다. </p>
	</c:when>
	<c:when test="${cost >5000 && cost < 10000 }">
		<p> 제품 가격은 5000~10000 사이 입니다.</p>
	</c:when>
	<c:otherwise>
		<p>제품가격 : 5000 이하 </p>
	</c:otherwise>
</c:choose>


<!-- c:foreach  -->
<%
MemberVO member01 = new MemberVO();
member01.setMemId("nextit01");
member01.setMemNm("넥스트아이티01");

MemberVO member02 = new MemberVO();
member02.setMemId("nextit02");
member02.setMemNm("넥스트아이티02");

MemberVO member03 = new MemberVO();
member03.setMemId("nextit03");
member03.setMemNm("넥스트아이티03");

MemberVO member04 = new MemberVO();
member04.setMemId("nextit04");
member04.setMemNm("넥스트아이티04");

MemberVO member05 = new MemberVO();
member05.setMemId("nextit05");
member05.setMemNm("넥스트아이티05");

MemberVO member06 = new MemberVO();
member06.setMemId("nextit06");
member06.setMemNm("넥스트아이티06");

MemberVO member07 = new MemberVO();
member07.setMemId("nextit07");
member07.setMemNm("넥스트아이티07");

MemberVO member08 = new MemberVO();
member08.setMemId("nextit08");
member08.setMemNm("넥스트아이티08");

MemberVO member09 = new MemberVO();
member09.setMemId("nextit09");
member09.setMemNm("넥스트아이티09");

MemberVO member10 = new MemberVO();
member10.setMemId("nextit10");
member10.setMemNm("넥스트아이티10");

List<MemberVO> memberList = new ArrayList<MemberVO>();
memberList.add(member01);
memberList.add(member02);
memberList.add(member03);
memberList.add(member04);
memberList.add(member05);
memberList.add(member06);
memberList.add(member07);
memberList.add(member08);
memberList.add(member09);
memberList.add(member10);


request.setAttribute("memberList", memberList);



%>

<%-- <c:forEach items ="${memberList}" var="member" varStatus="status"> --%>
<%-- <c:forEach items ="${memberList}" 
var="member" varStatus="status" begin="3"> --%>
<%-- <c:forEach items ="${memberList}" 
var="member" varStatus="status" begin="3" end="7	"> --%>

<%-- <c:forEach items ="${memberList}" 
var="member" varStatus="status" begin="3" end="7" step="2">
    <p> 순번: ${status.count}</p>
    <p>아이디: ${member.memId}</p>
    <p>이름: ${member.memNm}</p>
</c:forEach>
 --%>
 
 <c:forEach items ="${memberList}" 
var="member" varStatus="status" begin="3" end="7" >
	시작값 : ${status.begin}<br/>        <!-- 시작값  -->
	끝값: ${status.end}<br/>          <!-- 끝값 -->
	증가값: ${status.step}<br/>         <!-- 증가값 -->
	현재 루프가 처음인지 반환  : ${status.first}<br/>        <!-- 현재 루프가 처음인지 반환  -->
	현재 루프가 마지막인지 반환 : ${status.last}<br/>         <!-- 현재 루프가 마지막인지 반환 -->   
	0부터의 순서: ${status.index}<br/>        <!-- 0부터의 순서-->
	카운트: ${status.count}<br/>        <!-- 카운트--> 
	현재 아이템: ${status.current}<br/>      <!-- 현재 아이템 -->
	
	
    <p> 순번: ${status.count}</p>
    <p>아이디: ${member.memId}</p>
    <p>이름: ${member.memNm}</p>
</c:forEach>
 	


</body>
</html>