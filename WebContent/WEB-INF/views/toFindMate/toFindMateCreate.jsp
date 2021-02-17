<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="/TeamFinder/css/main.css" />
<title>구해줘 팀즈</title>
</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="index.html">Industrious</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.html">Home</a></li>
					<li><a href="elements.html">팀원 찾기</a></li>
					<li><a href="/TeamFinder/toFindTeam">팀 찾기</a></li>
				</ul>
			</nav>

		<!-- Heading -->
			<div id="heading" >
				<h1>Generic Page</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="mainContent">
						<header>
							<h2>Post</h2>
						</header>
						<div class="highlights" style="background:E6E6E6;" >
							<c:set var="post" value="${post}">
								<table class="tableLayout">
														
									<tr id="firstLine">
										<td class="label" rowspan="2">제 목</td>
										<td class="labelVal" rowspan="2" colspan="2">${post.title}</td>
										<td class="emptySpace" rowspan="2" colspan="7"></td>				
									</tr>
									<tr>	
									</tr>				
									<tr>
										<td class="label">글쓴이</td>
										<td class="labelVal" colspan="2">${post.user.user_id}</td>
										<td class="emptySpace" colspan="7"></td>	
									</tr>
									<tr>
										<td class="label">활동 지역</td>
										<td class="labelVal" colspan="2">${post.region}</td>
										<td class="emptySpace" colspan="7"></td>							
									</tr>
									<tr>
										<td class="label">기술 스택</td>
										<td class="labelVal" colspan="2">${post.project_stack}</td>
										<td class="emptySpace" colspan="7"></td>								
									</tr>
									<tr>
										<td class="label">미팅 방식</td>
										<td class="labelVal" colspan="2">${post.meeting_method}</td>
										<td class="emptySpace" colspan="7"></td>								
									</tr>
									<tr>
										<td class="label">예상 기간</td>
										<td class="labelVal" colspan="2">${post.project_period}</td>
										<td class="emptySpace" colspan="7"></td>								
									</tr>
									<tr>
										<td colspan="10" class="context">${post.context}</td>
									</tr>		
								</table>
							</c:set>						
						</div>
						<div class="highlights" style="background:blue; height: 200px;">
							<div>리뷰</div>
						</div>
						<div class="highlights" style="background:green; height: 100px;">
							<div>댓글</div>
						</div>					
					</div>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="content">
						<section>
							<h3>Accumsan montes viverra</h3>
							<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing. Lorem ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing sed feugiat eu faucibus. Integer ac sed amet praesent. Nunc lacinia ante nunc ac gravida.</p>
						</section>
						<section>
							<h4>Sem turpis amet semper</h4>
							<ul class="alt">
								<li><a href="#">Dolor pulvinar sed etiam.</a></li>
								<li><a href="#">Etiam vel lorem sed amet.</a></li>
								<li><a href="#">Felis enim feugiat viverra.</a></li>
								<li><a href="#">Dolor pulvinar magna etiam.</a></li>
							</ul>
						</section>
						<section>
							<h4>Magna sed ipsum</h4>
							<ul class="plain">
								<li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
								<li><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
								<li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>
								<li><a href="#"><i class="icon fa-github">&nbsp;</i>Github</a></li>
							</ul>
						</section>
					</div>
					<div class="copyright">
						&copy; Untitled. Photos <a href="https://unsplash.co">Unsplash</a>, Video <a href="https://coverr.co">Coverr</a>.
					</div>
				</div>
			</footer>
			
			<!-- Scripts -->
			<script src="/TeamFinder/js/jquery.min.js"></script>
			<script src="/TeamFinder/js/browser.min.js"></script>
			<script src="/TeamFinder/js/breakpoints.min.js"></script>
			<script src="/TeamFinder/js/util.js"></script>
			<script src="/TeamFinder/js/main.js"></script>
		
</body>
</html>