<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>구해줘 팀즈</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="/TeamFinder/css/main.css" />
    <link rel="stylesheet" href="/TeamFinder/css/modifyUser.css" />
    <link rel="stylesheet" href="/TeamFinder/css/font-awesome.min.css" />
</head>
  <body class="is-preload">
		<!-- Header -->
		<header id="header">
			<a class="logo" href="index">구해줘 팀즈</a>
			
			<c:choose>	
				<c:when test="${sessionScope.loginCheck eq true}">
			       ${sessionScope.id} 님이 로그인 되었습니다.
			       <nav>
				       	<a href="#menu">메뉴</a>
				       
				       	<nav id="menu">
							<ul class="links">
								<li><a href="index">Home</a></li>
								<li><a href="modifyUser">마이 페이지</a></li>
								<li><a href="toFindMate">팀원 구하기</a></li>
								<li><a href="toFindTeam">팀 찾기</a></li>
								<li><a id="logOut">로그 아웃</a></li>
							</ul>
						</nav>
					</nav> 
			       	<script type="text/javascript">
							document.querySelector('#logOut').addEventListener('click', function(){
								alert('로그아웃 되었습니다.');
								location.href="/TeamFinder/logout.do";
							});	
					</script>		       
				</c:when>
				 <c:otherwise>
					<nav>
						<a href="#menu">로그인</a>
						
						<!-- Nav -->
						<nav id="menu">
							<ul class="links">
								<li><a href="index">Home</a></li>
								<li><a href="login">로그인</a></li>
								<li><a href="signUp">회원가입</a></li>
							</ul>
						</nav>
						
					</nav>
				 </c:otherwise>
			</c:choose>
		</header>

		<!-- Heading -->
			<div id="heading" >
				<h1>회원정보 수정</h1>	
			</div>
<!-- Main -->
	<section id="main" class="wrapper">
		<h3 align="center"> ${sessionScope.id}&nbsp;님!</h3>
		<div class="inner">
			<div class="content">
			    <form action="member_edit" method="post">
			        <div class="box">
			        <fieldset>
			          <p></p>
			          <p></p>
			          
			          
			          <label for="newpwd">&nbsp;&nbsp;비밀번호 : </label>
			          <input type="password" id="user_pwd" name="user_pwd">
			
			          
			          <label for="email">&nbsp;&nbsp;이메일 : </label>
			          <input type="text" name="user_email" id="user_email">
			
			          <label for="location">&nbsp;&nbsp;지역 : </label>
			          <select name="region" id="region">
			              <option value="seoul">서울특별시</option>
			              <option value="busan">부산광역시</option>
			              <option value="incheon">인천광역시</option>
			              <option value="daegu">대구광역시</option>
			              <option value="gwangju">광주광역시</option>
			              <option value="ulsan">울산광역시</option>
			              <option value="daejeon">대전광역시</option>
			              <option value="sejong">세종시</option>
			              <option value="gyeonggido">경기도</option>
			              <option value="gangwondo">강원도</option>
			              <option value="chungcheong_namdo">충청남도</option>
			              <option value="chungcheong_bukdo">충청북도</option>
			              <option value="gyeongsang_bukdo">경상북도</option>
			              <option value="gyeongsang_namdo">경상남도</option>
			              <option value="jeonbuk">전라북도</option>
			              <option value="jeonnam">전라남도</option>
			              <option value="jeju">제주도</option>
			          </select>
			          <label for="user_stack">&nbsp;&nbsp;기술스택 : </label>
			          <input type="text" name="user_stack" id="user_stack">			          
			          <label for="image">&nbsp;&nbsp;이미지 : </label>
			          &nbsp;&nbsp;<input type="file" name="user_image" id="image">
			          </fieldset>
			          <hr/>
			          <p align="right">
			          <input type="button" value="수정하기" onclick="this.form.submit();">
			          <input style="margin-right:0.5rem;" type="button" value="탈퇴하기" id="signOut">
			         	<script type="text/javascript">
							document.querySelector('#signOut').addEventListener('click', function(){
								location.href="/TeamFinder/signOutUser";
							});	
					</script>	
			          </p>
			          <br>
			       </div> 
			      </form>
				</div>
			</div>
		</section>
    <!-- Footer -->
    <footer id="footer">
      <div class="inner">
        <div class="content">
          <section>
            <h3>Accumsan montes viverra</h3>
            <p>
              Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida
              odio porttitor sem non mi integer non faucibus ornare mi ut ante
              amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem
              accumsan varius montes viverra nibh in adipiscing. Lorem ipsum
              dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit
              adipiscing eu felis iaculis volutpat ac adipiscing sed feugiat eu
              faucibus. Integer ac sed amet praesent. Nunc lacinia ante nunc ac
              gravida.
            </p>
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
              <li>
                <a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a>
              </li>
              <li>
                <a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a>
              </li>
              <li>
                <a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a>
              </li>
              <li>
                <a href="#"><i class="icon fa-github">&nbsp;</i>Github</a>
              </li>
            </ul>
          </section>
        </div>
        <div class="copyright">
          &copy; Untitled. Photos <a href="https://unsplash.co">Unsplash</a>,
          Video <a href="https://coverr.co">Coverr</a>.
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