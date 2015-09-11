<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
     <head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Spring security</title>

     <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
     <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
     </head>

     <body>

     <c:if test="${error == 'true'}">
     <script>
     jQuery(function() {
          var move = '70px';
          jQuery('#message').animate({
               top : '+=' + move
          }, 'slow', function() {
               jQuery('#message').delay(1000).animate({ top : '-=' + move }, 'slow');
          });
     });
     </script>
     </c:if>

     <div>
     <div id="message" style="width:300px;position:absolute; top:-60px;border: 1px;border-color: #000;">로그인에 실패하셨습니다.</div>
     </div>

     <div style="margin-top:100px;">
     <form action="./login_security_check" method="post">
     아이디 : <input type="text" id="MEMBER_ID" name="MEMBER_ID">
     비밀번호 : <input type="password" id="MEMBER_PWD" name="MEMBER_PWD">
     <button type="submit">Sign in</button>
     </form>

     </div>

     </body>

</html>