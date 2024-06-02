<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/movie/ticketing.css">
<script defer src="/app/resources/js/movie/ticketing.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav>
        <div class="left">
            <div class="logo">
                <a href="/app/home"><img src="/app/resources/img/logo.png" alt=""></a>
            </div>
            <div class="mobile-menu">메뉴</div>
            <ul class="menu-list">
                <li>
                    <a href="/app/movie/list">영화</a>
                </li>
                <li>
                    <a href="/app/cinema">영화관</a>
                </li>
                <li>
                    <a href="/app/movie/ticketing">예매</a>
                </li>
                <li>
                    <a href="/app/store">스토어</a>
                </li>
                <li>
                    <a href="/app/board/home">고객센터</a>
                </li>
            </ul>
        </div>
        <div class="right">
        <c:choose>
           <c:when test="${sessionScope.loginMemberVo != null}">
	            <div class="icon kids">
	                <a href="/app/member/editHome">마이페이지</a>
	            </div>
	            <div class="icon bell">
	                <a href="/app/member/logout">로그아웃</a>
	            </div>
           </c:when>
            <c:otherwise>
	              <div class="icon kids">
	                <a href="/app/member/login">로그인</a>
	            </div>
	            <div class="icon bell">
	                <a href="/app/member/join">회원가입</a>
	            </div>
            </c:otherwise>
        </c:choose>
             <div class="icon search">
                <div class="search-bar">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="제목, 사람, 장르"/>
                </div>
            </div>
        </div>
</nav>
	<section>
		<div id="sec">

				<!-- date -->
				<div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
						</div>
						<!-- Add Pagination -->
						<div class="swiper-pagination"></div>
					</div>
				</div>
				<!-- date �� -->


				<div id="secMidTitle">
					<div class="dname">
						<img alt="" src="/app/resources/img/ms1.png">
					</div>
					<div class="divc">
						<img alt="" src="/app/resources/img/ms2.png">
					</div>
					<div class="divT">
						<img alt="" src="/app/resources/img/ms3.png">
					</div>
					<div class="divT2">
						<img alt="" src="/app/resources/img/ms4.png">
					</div>
				</div>


				<div id="secMain">

					<!-- �޾ƿ� ��ȭ���� -->
					
					<!-- ��ȭ���� ���� -->
					<div class="sname s">
						<table class="sul">
						<c:forEach items="${requestScope.voList}" var="vo">
								<tr class="movietitle">
									<td class="mtd1"><button class="titlebtn" data-movietitle="${vo.title}">${vo.title}</button></td>
								</tr>
						</c:forEach>
						</table>
					</div>


					<!-- ��ȭ �������� -->
					<div class="s s1">
						<table class="sul" id="cinemaNameSelect">
						
						</table>
					</div>



					<!-- ��ȭ ������ ���� ��ȭ�� ���� -->
					<div class="s3 s2">
						<table class="sul" id="theaterNameSelect">
						
						</table>
					</div>


					<!-- ��¥����  -->
					<div class="s s4">
					<img class="corn3" alt="" src="/app/resources/img/pop_cornT.png">
						<table class="sul" id="movieDateSelect">
							
						</table>
					</div>


					<!-- �ð�����  -->
					<div class="s s5">
					<img class="corn4" alt="" src="/app/resources/img/pop_corn_D.png">
						<table class="sul" id="movieTimeSelect">
						
						</table>
					</div>

			<form action="/app/movie/seat" id="frm" method="post">
                <input type="hidden" id="selectedMovieTitle" name="movietitle">
                <input type="hidden" id="selectedCinemaName" name="cinemaName">
                <input type="hidden" id="selectedTheaterName" name="theaterName">
                <input type="hidden" id="selectedScreeningDate" name="screeningDate">
                <input type="hidden" id="selectedScreeningTime" name="screeningTime">
                <a href="/app/movie/seat" id="submitbtn"><img id="btn" alt="" src="/app/resources/img/seat.png"></a> 
            </form>


				</div>
			</div>
		</section>
        <footer>
            <div class="wrap">
                <div class="social-icons">
                    <i class="fa-brands fa-facebook-square"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-youtube"></i>
                </div>
                <div class="options">
                    <div class="option">자막 및 음성</div>
                    <div class="option">음성 지원</div>
                    <div class="option">고객 센터</div>
                    <div class="option">기프트카드</div>
                    <div class="option">미디어 센터</div>
                    <div class="option">투자 정보(IR)</div>
                    <div class="option">입사 정보</div>
                    <div class="option">이용 약관</div>
                    <div class="option">개인 정보</div>
                    <div class="option">법적 고지</div>
                    <div class="option">쿠키 설정</div>
                    <div class="option">회사 정보</div>
                    <div class="option">문의하기</div>
                    <div class="option"><a href="/app/admin/login">관리자</a></div>
                </div>
            </div>
        </footer>


</body>
</html>