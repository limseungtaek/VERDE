<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">CTX관리</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath }/">VDI 모니터링</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">CPU <span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="${pageContext.request.contextPath }/cpu/server">SERVER</a></li>
							<li><a href="${pageContext.request.contextPath }/cpu/vm">VM</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">Memory <span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="${pageContext.request.contextPath }/mem/server">SERVER</a></li>
							<li><a href="${pageContext.request.contextPath }/mem/vm">VM</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">HDD <span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="${pageContext.request.contextPath }/hdd/server">SERVER</a></li>
							<li><a href="${pageContext.request.contextPath }/hdd/vm">VM</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">Network <span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="${pageContext.request.contextPath }/net/server">SERVER</a></li>
							<li><a href="${pageContext.request.contextPath }/net/vm">VM</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">Session <span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="${pageContext.request.contextPath }/session/connect">접속추이</a></li>
							<li><a href="${pageContext.request.contextPath }/session/process">프로세스</a></li>
							<li><a href="${pageContext.request.contextPath }/session/loginout">접속이력</a></li>
						</ul>
					</li>
					<li><a href="${pageContext.request.contextPath }/board/request">요구사항</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">설정 <span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-menu-left">
							<li><a href="${pageContext.request.contextPath }/setup/threshold">임계치 설정</a></li>
							<li><a href="${pageContext.request.contextPath }/setup/passwd">비밀번호 변경</a></li>
							<li><a href="${pageContext.request.contextPath }/setup/alarm">알람 설정</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>