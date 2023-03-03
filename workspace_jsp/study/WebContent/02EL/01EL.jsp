<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.vo.MemberVO"%>
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

<!--  EL 데이터 타입 -->
Boolean true : ${true }<br>
Boolean false : ${false }<br>
정수 : ${123 }
실수 : ${3.14 }
문자열: ${"JAVA"}, ${'자바' } <br>
null : 
   <%! String id = null; %>
    ${empty id } <br>
    
<%
      MemberVO member = new MemberVO();
      member.setMemId("nextit");
      member.setMemPass("8850");
      member.setMemNm("넥스트아이티");

      request.setAttribute("member", member);
%>
		<!-- 스크립트요소 -->
	   memId : <%= member.getMemId()  %>
	   , memPass : <%= member.getMemPass() %>
	   
	   <hr>
	   <!-- EL -->
	   아이디 : ${member.memId }
	   , 패스워드 : ${member.memPass}
	   
	   
	   <hr>
	   <!-- EL 산술 연산자  -->
   \${1 + 2} : ${1 + 2} <br>
	\${"1" + 2} : ${"1" + 2} <br>
	\${1 + "2"} : ${1 + "2"} <br>
	\${ 0.5+"3" } : ${ 0.5+"3" } <br>
	\${"1" + "2"} : ${"1" + "2"} <br>
	\${null + 2} : ${null + 2} <br> 
	<%-- \${"one" + 2} : ${"one" + 2} <br> --%>  
	\${1 - 2} : ${1 - 2} <br>
	\${10 * 3} : ${10 * 3} <br>
	\${10 / 3} : ${10 / 3} <br>
	\${10 div 3} : ${10 div 3} <br>  
	\${10 % 3} : ${10 % 3} <br>
	\${10 mod 3} : ${10 mod 3} 
	
	<hr>
		<!-- EL 논리 연산자  -->
	\${1==1 && "nextit"=="nextit"} : ${1==1 &&  "nextit"=="nextit"} <br>
	\${1==1 and "nextit"=="nextit"} : ${1==1 and  "nextit"=="nextit"} <br>
	 
	\${1==1 || 1!=1} : ${1==1 || 1!=1} <br>
	\${1==1 or 1!=1} : ${1==1 or 1!=1} <br>
	 
	\${!true } : ${!true } <br>
	\${not false } : ${not false }
	
	<hr>
	  <!-- EL 비교 연산자  -->
	\${10 == 10} : ${10 == 10} <br>
	\${10 eq 10} : ${10 eq 10} <br>
	\${'nextit' == 'nextit'} : ${'nextit' == 'nextit'} <br>
	\${'nextit' eq 'nextit'} : ${'nextit' eq 'nextit'} <br>
	 
	\${10 != 9} : ${10 != 9} <br>
	\${10 ne 9} : ${10 ne 9} <br>
	 
	\${'nextit' != 'nextit1'} : ${'nextit' != 'nextit1'} <br>
	\${'nextit' ne 'nextit1'} : ${'nextit' ne 'nextit1'} <br>
	 
	\${3 < 10} : ${3 < 10} <br>
	\${3 lt 10} : ${3 lt 10} <br>
	 
	\${10 > 3} : ${10 > 3} <br>
	\${10 gt 3} : ${10 gt 3} <br>
	 
	\${3 <= 10} : ${3 <= 10} <br>
	\${3 le 10} : ${3 le 10}<br>
	 
	\${10 >= 3} : ${10 >= 3} <br>
	\${10 ge 3} : ${10 ge 3} 
	
	<hr>
	<!-- EL empty 연산자 -->
	
	
	<%
/*String 에 null   */
	request.setAttribute("memId", null);
	/*String 에 ""  */
	request.setAttribute("memPw1", "");
	request.setAttribute("memPw2", " ");

	/*list에 string  */
	List<String> list_string = new ArrayList<String>();
	list_string.add("nextit");
	
	/*list에 null  */
	List<String> list_null = new ArrayList<String>();

	request.setAttribute("list_string", list_string);
	request.setAttribute("list_null", list_null);
%>
	memId: ${memId }<br>
	empty memId : ${ empty memId}<br><br>  
	
	memPw1: ${memPw1 }<br>	
	empty memPw1 : ${ empty memPw1}<br><br>   
	
	memPw2: ${memPw2 }<br>	
	empty memPw2 : ${ empty memPw2}<br><br> 
	
	empty list_string : ${ empty list_string }<br>  
	empty list_null : ${ empty list_null }<br>	


<hr>
	<!-- EL 조건연산자  -->
	\${10 == 10 ? 2000 : 3000 } : ${10 == 10 ? 2000: 3000 }
	
<hr>
	<!-- EL 컬렉션  -->
	list01 : ${list01 = [1,2,3,4,5]}<br>
	list01 0번째 : ${list01[0] }<br>
	list01 1번째 : ${list01[1] }<br><br>
		
	list02 : ${list02 = [1,2,3,4,5]; ""}<br>  
	list02 0번째 : ${list02[0]}<br>
	list02 1번째 : ${list02[1]}<br><br>
	
	el map : ${map= {"rion": "사자" , "apeach": "어피치", "tiger":"호랑이"	} } <br>
	el map rion : ${map["rion"]}<br>
	
	
<hr>
	<!-- EL 메소드 ( EL은 객체가 가지고 있는 메소드를 사용할 수 있음  -->
	${ member.setMemId("nextit8850") }
	${ member.setMemPass("0427198850") }
	${ member.setMemNm("넥스트아이티교육센터") }
	
	memId : ${member.memId }<br>
	memPw : ${member.memPass }<br>
	memNm : ${member.memNm }<br>
	
	
	
	
	
	
	   
</body>
</html>