<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>
<html lang="ko-kr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>VERDE 모니터링</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <style>
        body { padding-top:200px; }
    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
<div class="container"> 
 <form class="form-horizontal" action="./login_security_check" method="post">
  <div class="form-group">
    <label class="col-sm-4 control-label input-lg">아이디</label>
    <div class="col-sm-5">
      <input type="text" name="MEMBER_ID" class="form-control input-lg" placeholder="아이디">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 control-label input-lg">비밀번호</label>
    <div class="col-sm-5">
      <input type="password" name="MEMBER_PWD" class="form-control input-lg" placeholder="비밀번호">
    </div>
  </div>
  <div class="form-group">  
        <div class="col-sm-offset-4 col-sm-8">   
        <label>
          <input type="checkbox"> 아이디 저장
        </label>
      </div>    
  </div>
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-8">
      <button type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-ok"> </span> 로그인</button>
    </div>
  </div>
</form>

</div> <!-- container 끝 -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
</body>
</html>