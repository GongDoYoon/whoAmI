<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/app/fix/header.css" />
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<c:set var="userNumber" value="${sessionScope.userNumber}" />
<c:set var="userStatus" value="${sessionScope.userStatus}" />
 <c:set var="userEmail" value="${sessionScope.userEmail}"/> 

<header class="header_wrapper">
	<div class="header_top">
		<div class="header_top_infowrapper">
		</div>
		<div class="header_top_infowrapper">
			<c:choose>
				<c:when test="${userNumber eq null}"> 
					<button type="button" class="button_login"
						onclick="location.href='${pageContext.request.contextPath }/user/UserLogin.user'">
						로그인</button>
					<button type="button" class="button_join"
						onclick="location.href='${pageContext.request.contextPath }/user/Join.user'">
						회원가입</button>
				</c:when>
					
				<c:otherwise>
						<!-- 마이페이지 -->
					<button class="button_login" style="padding-right: 20px";> ${userEmail}님 환영합니다</button>
					<c:if test="${userStatus == 0}">
					<button type="button" class="button_myPage"
								onclick="location.href ='${pageContext.request.contextPath}/userMyPage/MyProflieDetail.dy'">
								마이페이지</button>
					</c:if>
					<button type="button" class="button_login"
						onclick="location.href='${pageContext.request.contextPath }/user/UserLogout.user'">
						로그아웃</button>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div class="header_line"></div>

	<div class="header_header">
		<div class="header_nav_wrapper">
			<!-- 로고 -->
			<div class="logo" onclick="location.href='${pageContext.request.contextPath}/expert/MainPage.me'">
				<div class="logo_img">
					<img
						src="${pageContext.request.contextPath}/images/expert/solo/로고.png"
						alt="Who am I 로고">
				</div>
				<div class="logo_title"></div>
			</div>

			<!-- nav메뉴 -->
			<div class="header_nav">
				<div class="header_nav_button_wrapper expertlogin">
                     <button class="header_nav_button" onclick="consultSend()">심리검사</button>
             	</div>
				<div class="header_nav_button_wrapper expertlogin">
					<button class="header_nav_button" onclick="expertSend()">전문가 찾기</button>
				</div>
				<div class="header_nav_button_wrapper expertlogin">
					<button class="header_nav_button" onclick="sibalSend()">고민/사연</button>
				</div>
				<!-- <div class="header_nav_button_wrapper expertlogin">
					<button class="header_nav_button" onclick="diary()">감정일기</button>
				</div> -->
				<div class="expertLoginAdd"></div>
				<div class="expertLoginAdd2"></div>
			</div>
		</div>

		<!-- 마이페이지 글쓰기 -->
		<div class="header_nav_icon_wrapper">
			<c:if test="${userStatus == 0}">
			<div class="header_nav_icon">
				<a href="${pageContext.request.contextPath}/app/worryStroy/worrypage.jsp">
				<button class="header_nav_icon_button">글쓰기</button>
				</a>
			</div>
			</c:if>
			<c:if test="${userStatus == null}">
			<div class="header_nav_icon">
				<button class="header_nav_icon_button" onclick="location.href='${pageContext.request.contextPath }/user/UserLogin.user'">글쓰기</button>
			</div>
			</c:if>
		</div>
	</div>
</header>

<!-- alarm -->
<div
	class="Notifications__NotificationsWrapper-sc-1jfsc1j-0 fVNCIX notifications-transition-enter-done">
	<div class="notifications__header">
		<div class="notifications__header__title">
			<svg stroke="currentColor" fill="currentColor" stroke-width="0"
				viewBox="0 0 512 512" height="1em" width="1em"
				xmlns="http://www.w3.org/2000/svg">
                    <path
					d="M256 464c22.779 0 41.411-18.719 41.411-41.6h-82.823c0 22.881 18.633 41.6 41.412 41.6zm134.589-124.8V224.8c0-63.44-44.516-117.518-103.53-131.041V79.2c0-17.682-13.457-31.2-31.059-31.2s-31.059 13.518-31.059 31.2v14.559c-59.015 13.523-103.53 67.601-103.53 131.041v114.4L80 380.8v20.8h352v-20.8l-41.411-41.6z">

                    </path>
                </svg>
			알림
		</div>
		<div class="notifications__header__close">
			<svg stroke="currentColor" fill="currentColor" stroke-width="0"
				viewBox="0 0 24 24" height="1em" width="1em"
				xmlns="http://www.w3.org/2000/svg">
                    <path
					d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z">

                    </path>
                </svg>
		</div>
	</div>
	<div class="notifications__main">
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">11일 전</div>
				<div class="notification__main__contents">toran님이 마인드카페 글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">11일 전</div>
				<div class="notification__main__contents">vfdyhvxf255님이 마인드카페
					글에 공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">66Hope99님이 마인드카페 댓글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNyIgdmlld0JveD0iMCAwIDE3IDE3Ij4KICA8cGF0aCBmaWxsPSIjNTBjOWMzIiBkPSJNMzg1LjYwMjA4MiwxMy41OTg2MzY5IEwzODIuNDUxMDQxLDE2Ljc0OTM2MTggQzM4MS45MTU1NzEsMTcuMjg0Nzc4MyAzODEsMTYuOTA1NTc0NSAzODEsMTYuMTQ4MzgxMyBMMzgxLDIuNTQ5NzQ0NDIgQzM4MSwxLjE0MTU1OTQ2IDM4Mi4xNDE2NzQsMCAzODMuNTUsMCBMMzk1LjQ1LDAgQzM5Ni44NTgzMjYsMCAzOTgsMS4xNDE1NTk0NiAzOTgsMi41NDk3NDQ0MiBMMzk4LDExLjA0ODg5MjUgQzM5OCwxMi40NTcwNzc0IDM5Ni44NTgzMjYsMTMuNTk4NjM2OSAzOTUuNDUsMTMuNTk4NjM2OSBMMzg1LjYwMjA4MiwxMy41OTg2MzY5IFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zODEpIi8+Cjwvc3ZnPgo="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">minalove316님이 마인드카페에
					댓글을 남기셨습니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNyIgdmlld0JveD0iMCAwIDE3IDE3Ij4KICA8cGF0aCBmaWxsPSIjNTBjOWMzIiBkPSJNMzg1LjYwMjA4MiwxMy41OTg2MzY5IEwzODIuNDUxMDQxLDE2Ljc0OTM2MTggQzM4MS45MTU1NzEsMTcuMjg0Nzc4MyAzODEsMTYuOTA1NTc0NSAzODEsMTYuMTQ4MzgxMyBMMzgxLDIuNTQ5NzQ0NDIgQzM4MSwxLjE0MTU1OTQ2IDM4Mi4xNDE2NzQsMCAzODMuNTUsMCBMMzk1LjQ1LDAgQzM5Ni44NTgzMjYsMCAzOTgsMS4xNDE1NTk0NiAzOTgsMi41NDk3NDQ0MiBMMzk4LDExLjA0ODg5MjUgQzM5OCwxMi40NTcwNzc0IDM5Ni44NTgzMjYsMTMuNTk4NjM2OSAzOTUuNDUsMTMuNTk4NjM2OSBMMzg1LjYwMjA4MiwxMy41OTg2MzY5IFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zODEpIi8+Cjwvc3ZnPgo="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">shasha91님이 마인드카페에
					댓글을 남기셨습니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">ksjlcs74님이 마인드카페 글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNyIgdmlld0JveD0iMCAwIDE3IDE3Ij4KICA8cGF0aCBmaWxsPSIjNTBjOWMzIiBkPSJNMzg1LjYwMjA4MiwxMy41OTg2MzY5IEwzODIuNDUxMDQxLDE2Ljc0OTM2MTggQzM4MS45MTU1NzEsMTcuMjg0Nzc4MyAzODEsMTYuOTA1NTc0NSAzODEsMTYuMTQ4MzgxMyBMMzgxLDIuNTQ5NzQ0NDIgQzM4MSwxLjE0MTU1OTQ2IDM4Mi4xNDE2NzQsMCAzODMuNTUsMCBMMzk1LjQ1LDAgQzM5Ni44NTgzMjYsMCAzOTgsMS4xNDE1NTk0NiAzOTgsMi41NDk3NDQ0MiBMMzk4LDExLjA0ODg5MjUgQzM5OCwxMi40NTcwNzc0IDM5Ni44NTgzMjYsMTMuNTk4NjM2OSAzOTUuNDUsMTMuNTk4NjM2OSBMMzg1LjYwMjA4MiwxMy41OTg2MzY5IFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zODEpIi8+Cjwvc3ZnPgo="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">ysh7412님이 마인드카페에 댓글을
					남기셨습니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">ysh7412님이 마인드카페 글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">jyh789thj님이 마인드카페
					댓글에 공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">yuni123님이 마인드카페 글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">jyh789thj님이 마인드카페 글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNyIgdmlld0JveD0iMCAwIDE3IDE3Ij4KICA8cGF0aCBmaWxsPSIjNTBjOWMzIiBkPSJNMzg1LjYwMjA4MiwxMy41OTg2MzY5IEwzODIuNDUxMDQxLDE2Ljc0OTM2MTggQzM4MS45MTU1NzEsMTcuMjg0Nzc4MyAzODEsMTYuOTA1NTc0NSAzODEsMTYuMTQ4MzgxMyBMMzgxLDIuNTQ5NzQ0NDIgQzM4MSwxLjE0MTU1OTQ2IDM4Mi4xNDE2NzQsMCAzODMuNTUsMCBMMzk1LjQ1LDAgQzM5Ni44NTgzMjYsMCAzOTgsMS4xNDE1NTk0NiAzOTgsMi41NDk3NDQ0MiBMMzk4LDExLjA0ODg5MjUgQzM5OCwxMi40NTcwNzc0IDM5Ni44NTgzMjYsMTMuNTk4NjM2OSAzOTUuNDUsMTMuNTk4NjM2OSBMMzg1LjYwMjA4MiwxMy41OTg2MzY5IFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zODEpIi8+Cjwvc3ZnPgo="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">bnb999님이 마인드카페에 댓글을
					남기셨습니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">bnb999님이 마인드카페 글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNyIgdmlld0JveD0iMCAwIDE3IDE3Ij4KICA8cGF0aCBmaWxsPSIjNTBjOWMzIiBkPSJNMzg1LjYwMjA4MiwxMy41OTg2MzY5IEwzODIuNDUxMDQxLDE2Ljc0OTM2MTggQzM4MS45MTU1NzEsMTcuMjg0Nzc4MyAzODEsMTYuOTA1NTc0NSAzODEsMTYuMTQ4MzgxMyBMMzgxLDIuNTQ5NzQ0NDIgQzM4MSwxLjE0MTU1OTQ2IDM4Mi4xNDE2NzQsMCAzODMuNTUsMCBMMzk1LjQ1LDAgQzM5Ni44NTgzMjYsMCAzOTgsMS4xNDE1NTk0NiAzOTgsMi41NDk3NDQ0MiBMMzk4LDExLjA0ODg5MjUgQzM5OCwxMi40NTcwNzc0IDM5Ni44NTgzMjYsMTMuNTk4NjM2OSAzOTUuNDUsMTMuNTk4NjM2OSBMMzg1LjYwMjA4MiwxMy41OTg2MzY5IFoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zODEpIi8+Cjwvc3ZnPgo="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">bnb999님이 마인드카페에 댓글을
					남기셨습니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">okokk님이 마인드카페 댓글에
					공감합니다.</div>
			</div>
		</div>
		<div
			class="Notification__NotificationWrapper-sc-3psu2f-0 jTwwkK notification">
			<div class="notification__icon">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABDtJREFUaAXtmU9oFFccx3+/2ewSMUUQDOQQs7PZPdmTFCN4aXrS0vpnNyVSWmgVq20RhFzsoRVbCqXQUuih+C8KihCa3SYqtafqoQH14ElPu9lNzCGQgiJGErLZ+fn7LZnp283L7Oy6CTN0B8Kb+b3fn8933puZty8AraN1B/7fdwC9yP+jUIhaVHqfEPaxfwyIugAhxMEzBPCE27tgREZSPT15L/nS09MxsJYGOfZtjt3ObTcQlABxluPzSHDbwNDNQ6Y5VSufqwApRKWls5z4Q4Y2aifDiRCGhg6a5n2d71ih0Fei0k8EtEfXX2FDtLjmdQxFzrjdmDUFpPPZjwnxPCdpr0hc4wKR7x/R8NaOLaf6Ozvnxf3O3FzH0/nnv/CNOELE41jPgbiIRJ+lYomrujBtsvRU7luy6GtdgFcbJ36wOdwuUw5eFhdv8zTZ5TVW54cGfpeKxr+p7lslIFOY/NQia7jasaFrxMflOKIdDcVXBRloHEmavZdVc4WA0ZnJBBStR+wQUZ18dL4EYePNge7erM1U8WBi0frex/DCHFlhtPn5ZbhyjM/k4sUiOcpsux/bcBgTB7rjOWFzRmC5BAf8CKtjUlkdAWDBXp2zL20KqyOAX3NRX8JqoFRWRwAgLw+Cciis/wkgXA4KPyisjgB+Hc0ERYDK6gjgFUpgBKisjgD+IkwEZQRUVkdAOAQjQRGgsjoC5MvGS+GHfhchjPZXWFgdASvgP/pdAPNVMDprIRt8tJC9xz/v+uxrX7UI9wfMxG6VqXoEgH84DKkOfjrXsa0SkOqJTxhg/OwncGERJmGr5lolQBy2m7HT/KrS/jCvTrAh18xSZtIU0wp4C7GIFBrkJ/6ZJmZDTcIgLMKkK6wVII6pWGya59x+3klY1AVuiE12JJhBWNaqt6YACUj29P5jAB1mEaW1EqybnWtKbWFwq+EqQAKTZmKct3pOuCVZjz6pKbVr5a4pQBKkoomLaBhf8nzk3xLre0gNqSU1vVRa9SFzC8rkc8d4JXiu7t01t6RKXxme4HgyFr+gmF1P6xIgmdKF3Cc8DJe87JW6Vq7u5L1QhjmaMuNXqrvcrusWIMky+ewHFsA1Pm3WBtgSz+WPkrHE726wur6GBEiizFTuHd4/HePReEOX2KuNAV7wq/JgMhr/22uM6tewAEmSnsruBAt545Y61aRezxFwDgzaxw9sw8v41xIgoLKjt7xMfxFBr1dw8UOEybY23Kuu7euJt31fW4Ak+nN2dtvCwvwtnk6ettC56INNmzree7er618bpNHW03egVnIBibRv7ufX4I1avuIjvs2Al1pNGQEbmr8PIX64f+Xp9LltU1ueNr/xw3qSRTRtadKUEbAhBSxlJr4wEH6wbXYrNulrJrzkbqoAG5bXMF8ZgPK/hvIh52KzrwPTZgrZs/IXGOAWaOsOBPAOvALvaSuS9oykoQAAAABJRU5ErkJggg=="
					alt="">
			</div>
			<div class="notification__main">
				<div class="notification__main__time">12일 전</div>
				<div class="notification__main__contents">bnb999님이 마인드카페 댓글에
					공감합니다.</div>
			</div>
		</div>
	</div>
	<div class="notifications__footer"></div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
var userStatus = "${userStatus}";
</script>
<script>var contextPath = "${pageContext.request.contextPath}";</script>
<script src="${pageContext.request.contextPath}/app/fix/header.js"></script>


