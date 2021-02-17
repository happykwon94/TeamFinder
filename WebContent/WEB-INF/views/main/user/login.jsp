<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구해줘 팀즈</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="/TeamFinder/css/main.css" />
</head>

<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="index">구해줘 팀즈</a>
				<nav>
					<a href="#menu">로그인/회원가입</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index">Home</a></li>
					<li><a href="login">로그인</a></li>
					<li><a href="signUp">회원가입</a></li>
				</ul>
			</nav>

		<!-- Heading -->
			<div id="heading" >
				<h1>구해줘 팀즈</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<header>
							<h2>로그인</h2>
						</header>
						<form action="login.do" method="post">
							아이디 : <input type="text" name="user_id" >
							비밀번호 : <input type="password" name="user_pwd">
							<br>
							<input type="submit" id="sub" value="로그인">
							
						</form>
					</div>
				</div>
			</section>

		<!-- footer 지움 -->

		<!-- Scripts -->
			<script src="/TeamFinder/js/jquery.min.js"></script>
			<script src="/TeamFinder/js/browser.min.js"></script>
			<script src="/TeamFinder/js/breakpoints.min.js"></script>
			<script src="/TeamFinder/js/util.js"></script>
			<script src="/TeamFinder/js/main.js"></script>

	</body>
</html>