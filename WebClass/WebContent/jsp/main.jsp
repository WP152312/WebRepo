<%@page import="org.dimigo.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/footer.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
function menu_over(e) {
	e.setAttribute("class", "nav-item active");
}
function menu_out(e) {
	e.setAttribute("class", "nav-item");
}
</script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<%@ include file="menu.jsp" %>
  	
    <%-- 세션이 없는 경우 --%>
    <%
    	if((UserVo)session.getAttribute("key")==null){
    %>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/jsp/login.jsp">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/jsp/signup.jsp">Sign up</a>
    <%
    	}
    	else{
    		UserVo user=(UserVo)session.getAttribute("key");
    %>
    <%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getNickname() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form action="bloglogout" method=post> 
	      	<button type="submit" class="dropdown-item">Sign out</button>
		  </form>
	       	
	    </li>
	    </ul>
    <%
    	}
	%>
  </div>
</nav>







	<div class="margin">

		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">

					<img class="d-block w-100" src="/WebClass/image/seoul.jpg"
						style="max-width: 100%; min-width: 100%; height: auto"
						alt="First slide">
					<div class="carousel-caption d-none d-md-block"></div>


				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="/WebClass/image/view.jpg"
						alt="Second slide"
						style="max-width: 100%; min-width: 100%; height: auto">
					<div class="carousel-caption d-none d-md-block"></div>

				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="/WebClass/image/view2.jpg"
						alt="Third slide"
						style="max-width: 100%; min-width: 100%; height: auto">
					<div class="carousel-caption d-none d-md-block"></div>



				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<br> <br>
	</div>



	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->



	<div class="container marketing">

		<!-- Three columns of text below the carousel -->

		<div class="row">
			<div class="col-lg-4">
				<img class="rounded-circle" src="/WebClass/image/hobby.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Hobby</h2>
				<p>저의 취미는 친구들과 함께 농구를 하는 것입니다.</p>
				<p>
					<a class="btn btn-secondary" href="#firstsection" role="button">View
						details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="rounded-circle" src="/WebClass/image/like.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Like</h2>
				<p>제가 좋아하는 것은 좋아하는 크리에이터들이 직접 만든 영상 보기 입니다.</p>
				<p>
					<a class="btn btn-secondary" href="#secondsection" role="button">View
						details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="rounded-circle" src="/WebClass/image/Dream.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Dream</h2>
				<p>저의 꿈은 두개가 있는데 첫번째 꿈은 파일럿이고 두번째 꿈은 육군장교입니다.</p>
				<p>
					<a class="btn btn-secondary" href="#thirdsection" role="button">View
						details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette" id="firstsection">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					첫번째, 나의 취미 <span class="text-muted">나를 바꾸게 만든 운동</span>
				</h2>
				<p class="lead">내가 농구를 시작하게 된 계기는 중학교 2학년때 깍두기 같은 친구의 권유로 시작하게
					되었다. 그 친구는 현재 집안 사정으로 인해 미국으로 유학을 가있지만 유학을 가기 전에는 학교 수업이 끝나자마자 학교에
					있는 농구장으로 가서 매일 1시간 씩 그 친구와 함께 농구를 했다. 그 친구로 인해 디미고 체육대회에서 우승도 했지만
					지금은 그 친구가 곁에 없다. 나중에 수능이 끝나고 미국으로 한달간 친구를 만나러 갈 것이다. 옆에 사진은 그 친구가
					가장 좋아하는 농구 선수이자 나를 칭하는 이름이었다.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-fluid mx-auto"
					src="/WebClass/image/james.jpg" data-src="holder.js/500x500/auto"
					alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider" id="secondsection">

		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">
					두번째, 내가 좋아하는 것 <span class="text-muted">하고 싶은 것은 마음대로</span>
				</h2>
				<p class="lead">내가 중학년때 까지만 해도 광고기획자의 꿈을 꾸고 있었다. 
				하지만 디미고에 이과(웹 프로그래밍)로 진학을 한 이후에 자연스럽게 다른 꿈으로 바꿨었다.
				1학년때는 주말에 집에가서 밤을 새면서 까지 광고를 제작하고 영상 편집을 공부했다.
				원래 내가 가지고 있는 꿈에 대한 소망이어서 그런지는 모르지만 유튜브 크리에이터들이
				직접 만든 영상을 집에 갈 때 마다 보면서 내가 포기한 꿈들을 이루고 있는 사람들을 보면서
				즐기고 있다. </p>
			</div>
			<div class="col-md-5 order-md-1">
				<img class="featurette-image img-fluid mx-auto"
					src="/WebClass/image/youtube.jpg" data-src="holder.js/500x500/auto"
					alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider" id="thirdsection">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					세번째, 현재의 꿈. <span class="text-muted">고등학교의 마지막 소망.</span>
				</h2>
				<p class="lead">현재 나는 공군사관학교, 육군사관학교에 진학하는 것을 목표로 두고 있다.
				물론 파일럿이라는 본연의 꿈을 가지고 있지만, 공군사관학교에 진학을 한 이후에 많은 경험을
				쌓은 이후 공군장교를 그만 둔 이후에 대한항공 기장이 되는 것이 꿈이다. 파일럿이라는 
				꿈도 꾸고 있지만 육군사관학교를 진학한 이후에 장교가 되는 것이 꿈이다.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-fluid mx-auto"
					src="/WebClass/image/airplane.jpg" data-src="holder.js/500x500/auto"
					alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
			<p class="float-right">
				<a href="#">Back to top</a>
			</p>

		</footer>

	</div>
	
	
	<!-- /.container -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

</body>
</html>