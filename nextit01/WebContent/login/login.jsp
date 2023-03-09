<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NextIT</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/images/nextit_log.jpg" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css">

<script>
function fn_login() {
	console.log("fn_login");
	
	let f = document.loginForm;
	console.log("f",f);
	
	f.action = "${pageContext.request.contextPath}/login/loginCheck.jsp";
	f.submit();
}


</script>




</head>
<body>
<section class="login_form">
    <h1>NextIT</h1>
    <form name="loginForm" method="post">
        <div class="int-area">
            <input type="text" id="memId" name="memId" value="" autocomplete="off" required>  
            <label for="memId">USER ID</label>
        </div>
        <div class="int-area">
            <input type="password" id="memPass" name="memPass" autocomplete="off" required>
            <label for="memPass">PASSWORD</label>
        </div>
        <div class="div_rememberMe">
      		<label for="rememberMe">
				<input type="checkbox" id="rememberMe" name="rememberMe"  value="Y"/>&nbsp;&nbsp;ID 기억하기
			</label>
        </div>
        <div class="btn-area">
            <button type="button" id="btn_id" name="btn_id" onclick="fn_login()">LOGIN</button>
        </div>
    </form>
    <div class="caption">
        <ul class="caption_ul">
            <li>
                <a href="#" onclick="location.href='${pageContext.request.contextPath}/login/join.jsp'">join</a>
            </li>
            <li>
                <a href="#" onclick="">FORGOT PASSWORD</a>
            </li>
        </ul>
    </div>
</section> 
</body>
</html>