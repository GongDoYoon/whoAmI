<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="test.css" />
<title>관리자 페이지</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/expert/solo/expert.css">
</head>
<body>
<c:set var="everyUser" value="${everyUser}"/>
<c:set var="everyMan" value="${everyMan}"/>
<c:set var="everyWoman" value="${everyWoman}"/>
<c:set var="allUser" value="${allUser}"/>
<c:set var="allMan" value="${allMan}"/>
<c:set var="allWoman" value="${allWoman}"/>
<c:set var="allExpert" value="${allExpert}"/>
<c:set var="allWomanExpert" value="${allWomanExpert}"/>
<c:set var="allManExpert" value="${allManExpert}"/>
<c:set var="allFirstExpert" value="${allFirstExpert}"/>
<c:set var="allSecondExpert" value="${allSecondExpert}"/>
<c:set var="allWorry" value="${allWorry}"/>
<c:set var="allManWorry" value="${allManWorry}"/>
<c:set var="allWomanWorry" value="${allWomanWorry}"/>
<c:set var="allJoin" value="${allJoin}"/>
<c:set var="allPay" value="${allPay}"/>
<c:set var="allReview" value="${allReview}"/>
<c:set var="managerId" value="${sessionScope.managerId}"/>
	<div id="admin-whole-wrapper">
	<!-- 네비게이션 바  -->
		<div id="navigation">
			<div id="padding-div">
				<div class="logo-wrapper-manager">
					<img src="${pageContext.request.contextPath}/images/expert/solo/로고대두.png">
					<span>Who Am I</span>
				</div>
				<div id="first-a-wrapper">
					<br>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/admin/AdminDetail.mg" class="admin-a">메인 페이지</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/managerMbti/TestInfoListOk.ns" class="admin-a">심리검사 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/expert/ManagerExpertListOk.me" class="admin-a">전문가 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/worry/WorryManagermentListOK.bo" class="admin-a">고민/사연 관리</a>
					</div>
					<div id="hr-tag3"></div>
					<div class="a-wrapper">
						<a href="${pageContext.request.contextPath}/userMyPage/UserListOk.dy" class="admin-a">이용자 관리</a>
					</div>
					<div id="hr-tag3"></div>
				</div>

			</div>
		</div>
		
		
		
		<div id="first-wrapper">
         <div id="second-wrapper">
         <div class="upper-wrapper1">
         	<div class="loginJoin-send-wrapper-position">
               <div class="loginJoin-wrapper">
               <div class="loginJoin-send-wrapper">
               <c:choose>
                  <c:when test="${managerNumber eq null}">
                  <a href="${pageContext.request.contextPath }/admin/AdminLogin.mg"> 로그인 </a>/ 
                  <a href="${pageContext.request.contextPath}/admin/AdminJoin.mg"> 회원가입 </a>
               </c:when>

               <c:otherwise>
               	관리자 아이디: ${managerId}
               <a href="${pageContext.request.contextPath}/admin/AdminLogout.mg">로그아웃</a>
               </c:otherwise>
               </c:choose>
               </div>
            </div>
         	</div>
            </div>
            
            <div class="upper-wrapper2">
					<div class="manager-title-wrapper">
						<span class="marks">"</span><span>고마운 사람이 참 많았다. 그대가 참 고마운 사람이다.</span><span class="marks">"</span>
					</div>
				</div>	

				<div class="two-wrapper2">
					<div id="thirdBox">
						<p class="header-p">전체 회원 현황</p>
						<div id="hr-tag"></div>
						<div class="review-whole-wrapper">
							<div class="review-wrapper1">
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>총 회원 수</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${everyUser}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>남자</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${everyMan}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>여자</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${everyWoman}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="fifthBox">
						<p class="header-p">전문가 현황</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="chart-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span">
											<span>총 전문가 수</span>
										</div>
										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data">${allExpert}</span>
											</div>
											<div id="member-first-first-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-second-div">
										<div id="member-first-second-first-span" class="left-span">
											<span>남자 전문가</span>
										</div>
										<div class="flex">
											<div id="member-first-second-second-span">
												<span class="data">${allManExpert}</span>
											</div>
											<div id="member-first-second-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-third-div">
										<div id="member-first-third-first-span" class="left-span">
											<span>여자 전문가</span>
										</div>
										<div class="flex">
											<div id="member-first-third-second-span">
												<span class="data">${allWomanExpert}</span>
											</div>
											<div id="member-first-third-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span>1급)자격증 전문가 수 </span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data">${allFirstExpert}</span>
											</div>
											<div id="member-second-first-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span>2급)자격증 전문가 수</span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data">${allSecondExpert}</span>
											</div>
											<div id="member-second-second-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="two-wrapper2">
					<div id="thirdBox">
						<p class="header-p">회원 현황</p>
						<div id="hr-tag"></div>
						<div class="review-whole-wrapper">
							<div class="review-wrapper1">
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>총 일반회원 수</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${allUser}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>남자</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${allMan}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>여자</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${allWoman}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="fifthBox">
						<p class="header-p">누적 통계</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="chart-wrapper">
								<div id="member-first-half">
									<div id="member-first-first-div">
										<div id="member-first-first-first-span" class="left-span">
											<span>총 가입 수</span>
										</div>
										<div class="flex">
											<div id="member-first-first-second-span">
												<span class="data">${allJoin}</span>
											</div>
											<div id="member-first-first-third-span">
												<span>명</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-second-div">
										<div id="member-first-second-first-span" class="left-span">
											<span>총 결제 수</span>
										</div>
										<div class="flex">
											<div id="member-first-second-second-span">
												<span class="data">${allPay}</span>
											</div>
											<div id="member-first-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-first-third-div">
										<div id="member-first-third-first-span" class="left-span">
											<span>총 감정일기 수</span>
										</div>
										<div class="flex">
											<div id="member-first-third-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-first-third-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
								<div id="member-second-half">
									<div id="member-second-first-div">
										<div id="member-second-first-first-span" class="left-span">
											<span>총 문의 수</span>
										</div>
										<div class="flex">
											<div id="member-second-first-second-span">
												<span class="data">0</span>
											</div>
											<div id="member-second-first-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
									<div id="hr-tag2"></div>
									<div id="member-second-second-div">
										<div id="member-second-second-first-span" class="left-span">
											<span>총 후기 수</span>
										</div>
										<div class="flex">
											<div id="member-second-second-second-span">
												<span class="data">${allReview}</span>
											</div>
											<div id="member-second-second-third-span">
												<span>건</span><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="two-wrapper3">
					<div id="thirdBox">
						<p class="header-p">게시글 현황</p>
						<div id="hr-tag"></div>
						<div class="review-whole-wrapper">
							<div class="review-wrapper1">
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>총 게시글 개수</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${allWorry}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>개</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>남성 게시글</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${allManWorry}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
								<div id="hr-tag4"></div>
								<div class="review-span-wrapper">
									<div id="review-first-first-first-span" class="left-span">
										<span>여성 게시글</span>
									</div>
									<div class="flex">
										<div id="review-first-first-second-span">
											<span class="data">${allWomanWorry}</span>
										</div>
										<div id="review-first-first-third-span">
											<span>명</span><br>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="fifthBox">
						<p class="header-p">쿠폰 현황</p>
						<div id="hr-tag"></div>
						<div id="guest-host-member-wrapper">
							<div id="sixthBox">
						<div id="banner-img">
							<img id="couponImg" src="${pageContext.request.contextPath}/app/management/images/쿠폰안내.png" alt="">
						</div>
					</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>