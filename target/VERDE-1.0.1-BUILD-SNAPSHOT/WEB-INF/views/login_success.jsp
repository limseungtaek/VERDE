<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
어드민, 사용자 둘다 권한<br/>
로그인 성공 : ${sessionScope.userLoginInfo.username}<br/>
<a href="login_out">로그아웃</a>
<a href="user">사용자만 보는 화면</a> 
<a href="admin">어드민만 보는 화면</a>  
</body>
</html>