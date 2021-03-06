<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8" />
<title>심리검사</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mbtiTest/mbtiTestMain.css" />
</head>
<body>


	<div id="_next">
		<div class="Layout__LayoutWrapper-w6dyul-0 ddCubf">
			<!-- Header -->
			<!-- Header -->
	<c:if test="${userStatus == 0 or userStatus == null}">
			<jsp:include page="/app/fix/header.jsp" />
		</c:if>
		<c:if test="${userStatus == 1}">
			<jsp:include page="/app/fix/headerExpert.jsp" />
		</c:if>
			<div class="counselors__StyledCounselors-sc-6rdxuk-0 erRPPf">
				<div class="counselors__FilterWrapper-sc-6rdxuk-1 hEEjKX">
					<div class="counselors__CounselTypesDiv-sc-6rdxuk-2 fOTDxW">
						<div
							class="counselors__CounselorTypeWrapperDiv-sc-6rdxuk-8 fHZEnR">
							<div
								class="counselors__CounselorTypeDiv-sc-6rdxuk-7 fUhDCr selected">심리검사</div>
						</div>
					</div>
				</div>
				<div display="block" width="100%"
					class="_mobileHidden-dj5l14-0 gxWOWq">
					<div class="counselors__Line-sc-6rdxuk-5 ebDwuW"></div>
					<div class="counselors__Divider-sc-6rdxuk-6 RbebY"></div>
				</div>
				<div height="20" color="" class="_blank-sc-10grpd2-0 gZQbVb"></div>
				<!-- Content -->
				<div class='counselors__InterpretListDiv-sc-6rdxuk-15 kiLemB'  id="wrapper_testInfo"></div>
				
			</div>
		</div>
	</div>
	<jsp:include page="/app/fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	var contextPath = "${pageContext.request.contextPath}"
</script>
<script src="${pageContext.request.contextPath}/js/mbti/mbtiTestMain.js"></script>
</html>