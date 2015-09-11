<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <title><tiles:insertAttribute name="title" /></title>

    <!-- 부트스트랩 -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container ">
	<table class="table">
	    <thead>
	      <tr>
	        <th>SESSION</th>
	        <th>아이피</th>
	        <th>사용량 (%)</th>
	        <th>점검일자</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	      <tr class="info">
	        <td>Session 01</td>
	        <td>xxx.xxx.xxx.xxx</td>
	        <td>N %</td>
	        <td>2015-08-03 03:12:35</td>
	      </tr>
	    </tbody>
 	</table>
    <div class="text-center">
		<nav>
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li><a href="#">6</a></li>
		    <li><a href="#">7</a></li>
		    <li><a href="#">8</a></li>
		    <li><a href="#">9</a></li>
		    <li><a href="#">10</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>
</div>
</body>
</html>