<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%
	// 모듈별 페이지 고유 body id 지정
	String mod = null;
	if (request.getParameter("mod") == null) {
		mod = "id=\"body-mod-main\"";
	} else {
		mod = "id=\"body-mod-"+request.getParameter("mod")+"\"";
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>WOD BOARD</title>

	<!-- Fonts -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

	<!-- Library -->
	<script src="http://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

	<!-- CSS -->
	<link rel="stylesheet" href="./assets/css/reset.min.css">
	<link rel="stylesheet" href="./assets/css/core.min.css">
</head>

<body <%=mod%>>
	<div id="wrap">
		<header id="header">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div id="header-inner">
							<h1 class="title"><a href="/wodBoard/">WOD BOARD</a></h1>
	
							<nav class="navigation">
								<ul>
									<li><a href="https://www.crossfit.com/what-is-crossfit/" target="_blank" rel="noopener nofollow">CROSSFIT?</a></li>
									<li><a href="/wodBoard/?mod=record&p=daily">DAILY</a></li>
									<li><a href="/wodBoard/?mod=record&p=1rm">1RM</a></li>
								</ul>
							</nav>
							
							<div class="system-navigation">
								<ul>
									<li><a href="/wodBoard/?mod=member&p=login">LOGIN</a></li>
									<li><a href="/wodBoard/?mod=member&p=signup">SIGN UP</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
