<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사연글  상세 페이지</title>
    <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/worryStroy/ws.css">
   <link rel="stylesheet"
   href="${pageContext.request.contextPath}/app/myPage/assets/css/main.css" />
</head>
<body>
		<c:set var="worry" value="${worry}"/>
		<c:set var="worryList" value="${worryList}"/>
		<c:set var="worryCategor" value="${worryCategor}"/>
   		<c:set var="page" value="${page}"/>
   		<c:set var="userStatus" value="${userStatus}"/>
   		<c:set var="userNumber" value="${worry.userNumber}"/>
   		<c:set var="userSessionNumber" value="${sessionScope.userNumber}" />
    <div class="Layout__LayoutWrapper-w6dyul-0 ddCubf">
    <!-- Header -->
			<c:if test="${userStatus == 0 or userStatus == null}">
         <jsp:include page="/app/fix/header.jsp" />
      </c:if>
      <c:if test="${userStatus == 1}">
         <jsp:include page="/app/fix/headerExpert.jsp" />
      </c:if>
        
        <!-- 게시글 디테일 -->
        <div class="story__StoryWrapper-sc-6x53gv-1 gtvXoP page">
            <div class="BackTitle__BackTitleWrapper-sc-13svaxc-3 kNfuaY">
                <div class="back">
                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em"
                    wmlns="http://www.w3.org/2000/svg">
                        <path d="M21 11H6.83l3.58-3.59L9 6l-6 6 6 6 1.41-1.41L6.83 13H21z"></path>
                    </svg>
                </div>
                <div>
                    <div class="top__title">
                        <div class="BackTitle__TitleDiv-sc-13svaxc-1 goChkk title">사연글</div>
                    </div>
                </div>
            </div>
            <div class="story card">
                <div class="header">
                    <div class="category">${worry.getWorryCategoryNumber()}</div>
                    <div class="info">
                        <div class="nickname clickable">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAGKADAAQAAAABAAAAGAAAAADiNXWtAAADoElEQVRIDd1VXUiTURh+v7nNuc2shEHmYBgqGVIm/WgkOSOmgllECEZBP1LRnRahBFJ4Zd1EdGF6kdSFSHRhKGJJUFlWCpXLldbCCHHmtLTNberXc8787Di+Sd124Oz9Oc/7vO/OOe/5JFocsixLoY/ekzBPkEybuFsiJ2STLm1toyRJ8iL0n4TE0PKXX+tCgdk7skx2tWhJom5drOGIZDONqq2v5NPwylcgZ8EscbgAmRe0EmHkmoZtS7TKGfj95w88hicJbyEVFRVtiSSKZkvBDxMvELxDDfByoJ/qGq/R/vwi8vl95P0xOdE3+OYGzuMCZl57e/trtTjRJwVdE9M4PbPoZHogGKDTdZWMlC+tWbWazHGm+a9j32IWsW4k2djR0RFYtFWFRtULZ/vTh5y86ug5itXH0nrLOjp7+DgnA/FtQGw4vxPR4hW/hsJXUbGXZGfPI8pMzaDdW3Oo4uBRGhgepMu3ruoBGDWbzWeQ5AH0i7W1tdqlIBWF/YOmSP/bISeNfh+jfTvz+dLenXt4Mv+sXwviK62trX7Im1i09vb25kXGi7Ym3ETULTqf9D8noyGOcjZvW3IfKCjugzFrtVobmdNkMrGYH5ilzI42NKhE5k2EZlJALvcQpSTbSKfVcRdrtEAwVAZssKGhIVRcXJwyMzNTA3sW53CqsLDwq8Ph+IzZonAoku8f61AA9ypPxdiEZ3vGhvQ5EPcDyJ+K/HSHDAI9yO4uLCyUaTBsNhslJSVRfHx8ssvlIrfbnagQryhB4sO8LoIqKip0SOBH9XJzc7Ps9XpR05/R2dnJCpBLS0ttYly0G+BBaKoIHBkZqYRtqK6uptzcXHGJ64mJ4eLn5uYscHxRANH64BUAm5CEvz0lJSVJ2O9LdrtdlZyRabXhWufn55dxLjOUrJDssKzYJn5DgsFgIZIZy8vLBchydXIy3PFINC2uqCbAG3MPFb9jVSNJLOQui8XCD1QMFnWn00nA/czOzh4U/aoJAGQflxpUnYX5AHO10WgU45bp4+Pj1NXVxXz30dkL4qJqAgbAI9aGROcx7ZgFHo+HfD6fGMt15mcHj22c1ul01ZEA5WWM9HN7eHi4Jy0t7TGMzFAoZAWZlJWVRXq9nmATribV19cT/OMxMTGOtrY2Fw8UfvgtEeyoKs6iCltVbzAYKCEhgaampigQCLB9f4agY/jHn9SC/zoBC8aXLA9JDkFlb8hP3JgWVM26/T8evwHAKHX0uiXr4AAAAABJRU5ErkJggg==" class="story__BeanImg-sc-6x53gv-0 kkatLW">
                            ${worry.getUserNickname()}
                        </div>
                        <div class="from-now">
                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em"
                                wmlns="http://www.w3.org/2000/svg">
                            <path d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path>
                            </svg>
                            ${worry.getWorryDate()}
                        </div>
                        <div class="more">
                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em"
                                wmlns="http://www.w3.org/2000/svg">
                            <path d="M296 136c0-22.002-17.998-40-40-40s-40 17.998-40 40 17.998 40 40 40 40-17.998 40-40zm0 240c0-22.002-17.998-40-40-40s-40 17.998-40 40 17.998 40 40 40 40-17.998 40-40zm0-120c0-22.002-17.998-40-40-40s-40 17.998-40 40 17.998 40 40 40 40-17.998 40-40z"></path>
                            </svg>
                            <c:if test="${userNumber == userSessionNumber}">
                            <div class="More__MoreWrapper-indjn2-0 cLrShV">
                                <div class="action" onclick="location.href = '${pageContext.request.contextPath}/worry/WorryUpdate.bo?worryNumber=${worry.getWorryNumber()}'">수정</div>
                                <div class="action" onclick="location.href = '${pageContext.request.contextPath}/worry/WorryDeleteOK.bo?worryNumber=${worry.getWorryNumber()}'">삭제</div>
                            </div>
                            </c:if>
                            <c:if test="${userNumber != userSessionNumber}">
                            <div class="More__MoreWrapper-indjn2-0 cLrShV">
                                <div class="action">수정</div>
                                <div class="action">삭제</div>
                            </div>
                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="main">
                    <div class="main__title">${worry.getWorryTitle()}</div>
                    <div class="main__contents">${worry.getWorryContent()}</div>
                    <div class="main__hashtags">
                        <span class="main__hashtags__hashtag">${worry.getWorryHashTag()}</span>
                    </div>
                </div>
                <div id="counselor_comment" class="footer">
                    <!-- <div class="reactions">
                        <img class="recommend" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEgyNFYyNEgweiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEyNC4wMDAwMDAsIC01ODEuMDAwMDAwKSB0cmFuc2xhdGUoMTYuMDAwMDAwLCA0NzUuMDAwMDAwKSB0cmFuc2xhdGUoMTA4LjAwMDAwMCwgMTA2LjAwMDAwMCkiLz4KICAgICAgICAgICAgICAgICAgICA8ZyBmaWxsLXJ1bGU9Im5vbnplcm8iIHN0cm9rZT0iI0RERCI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0yLjMyNSAxNC4wMDZjLjMwNi4xODEuNjQyLjMxNyAxIC40bC4yNzIuMDUxIDEuMTcyLjE3NmMuMDUyLjAwOC4xMDMuMDI0LjE1LjA0OGwuMDY4LjA0Ljk1Ni42ODdjLjE2Ny4xMi4zNDIuMjIzLjUyMy4zMWwuNzg2IDIuNDk3LS44OTcgMi43NzVjLS4wODQuMjYtLjM2NC40MDMtLjYyNS4zMi0uMDkyLS4wMy0uMTczLS4wODYtLjIzMy0uMTYybC0xLjcyOC0yLjE0NGMtLjExLS4xMzQtLjI4LS4yMDMtLjQ1Mi0uMThsLTIuNzU1LjM2N2MtLjI3Mi4wMzYtLjUyMi0uMTU1LS41NTgtLjQyNy0uMDEzLS4xLjAwNC0uMi4wNS0uMjlsMi4yNzEtNC40Njh6bTExLjM1IDBsMi4yNzEgNC40NjhjLjA0Ni4wOS4wNjMuMTkuMDUuMjktLjAzMi4yMzgtLjIyNy40MTQtLjQ1Ny40M2wtLjEtLjAwMy0yLjc1Ni0uMzY3Yy0uMTM3LS4wMTgtLjI3NC4wMjItLjM4LjEwOGwtLjA3Mi4wNzItMS43MjggMi4xNDRjLS4wNi4wNzYtLjE0MS4xMzEtLjIzMy4xNjEtLjIyOC4wNzQtLjQ3MS0uMDI2LS41ODUtLjIyN2wtLjA0LS4wOTItMS41OTItNC45MjNjLjYxNy0uMDEgMS4yMzEtLjE3OSAxLjc3Ni0uNTA4bC4yMjgtLjE1MS45NTYtLjY4NmMuMDQzLS4wMzEuMDktLjA1NS4xNC0uMDcxbC4wNzgtLjAxOCAxLjE3Mi0uMTc2Yy40Ni0uMDY5Ljg5LS4yMjUgMS4yNzEtLjQ1ek05LjE3NC4zNzZsLjk1Ni42ODdjLjI1OC4xODUuNTU4LjMwNy44NzQuMzU0bDEuMTcyLjE3NmMuODU4LjEyOSAxLjUzMS43ODcgMS42NjMgMS42MjdsLjE4IDEuMTQ2Yy4wNDguMzEuMTcyLjYwMy4zNjEuODU1bC43MDIuOTM1Yy41MTMuNjg0LjUxMyAxLjYxNiAwIDIuM2wtLjcwMi45MzVjLS4xOS4yNTItLjMxMy41NDYtLjM2Mi44NTVsLS4xOCAxLjE0N2MtLjEzMS44MzktLjgwNCAxLjQ5Ny0xLjY2MiAxLjYyNmwtMS4xNzIuMTc2Yy0uMzE2LjA0Ny0uNjE2LjE2OS0uODc0LjM1NGwtLjk1NS42ODZjLS43LjUwMy0xLjY1Mi41MDMtMi4zNTIgMGwtLjk1NS0uNjg2Yy0uMjU4LS4xODUtLjU1OC0uMzA3LS44NzUtLjM1NGwtMS4xNzEtLjE3NmMtLjg1OC0uMTI5LTEuNTMxLS43ODctMS42NjMtMS42MjZsLS4xOC0xLjE0N2MtLjA0OC0uMzEtLjE3Mi0uNjAzLS4zNjEtLjg1NWwtLjcwMi0uOTM1Yy0uNTEzLS42ODQtLjUxMy0xLjYxNiAwLTIuM2wuNzAyLS45MzVjLjE4OS0uMjUyLjMxMy0uNTQ2LjM2Mi0uODU1bC4xOC0xLjE0NmMuMTMxLS44NC44MDQtMS40OTggMS42NjItMS42MjdsMS4xNzEtLjE3NmMuMzE3LS4wNDcuNjE3LS4xNjkuODc1LS4zNTRsLjk1NS0uNjg2Yy43LS41MDMgMS42NTItLjUwMyAyLjM1MiAweiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEyNC4wMDAwMDAsIC01ODEuMDAwMDAwKSB0cmFuc2xhdGUoMTYuMDAwMDAwLCA0NzUuMDAwMDAwKSB0cmFuc2xhdGUoMTA4LjAwMDAwMCwgMTA2LjAwMDAwMCkgdHJhbnNsYXRlKDQuMDAwMDAwLCAxLjAwMDAwMCkiLz4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="전문답변추천">
                        <span> 0 명이 전문답변 추천 </span>
                        <img class="empathy" src="data:image/jpeg;base64,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" alt="공감" title="공감하기">
                        <span>0 명이 공감</span>
                        <span>댓글 0 개</span>
                    </div>
                    <div class="reactions">
                        <img class="bookmark" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD/4QBARXhpZgAATU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAqACAAQAAAABAAAAGKADAAQAAAABAAAAGAAAAAD/7QA4UGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAAA4QklNBCUAAAAAABDUHYzZjwCyBOmACZjs+EJ+/8AAEQgAGAAYAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/bAEMAAQEBAQEBAQEBAQIBAQECAwICAgIDBAMDAwMDBAQEBAQEBAQEBAQEBAQEBAUFBQUFBQYGBgYGBwcHBwcHBwcHB//bAEMBAQEBAgICAwICAwcFBAUHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHB//dAAQAAv/aAAwDAQACEQMRAD8A/uy8VXGuX3i3wv4S0rxBP4Yt9T0/UNRuLq0jgknP2OSziSNftEU8SqxuyzHyyflABGTTv+EK8S/9Fe8Rf9+dJ/8AlXRqf/JWfBX/AGLut/8ApTo9eiUAec+FbjXLHxb4o8Jar4gn8T2+mafp+o291dxwRzj7ZJeRPG32eKCJlU2gZT5YPzEEnAr0avO9M/5Kz41/7F3RP/SnWK9EoA//0P7ofGUPi6Px54O1HwpokepSDSNVspLm5fZbWrTzaa6PLj53G2B9safM5GMquXWT/hWR/wCQx/wld/8A8J797+2t3/kH7NnyPsmf+WOP9rd5n7yvU6KAPKPBsPi6Tx54x1HxXokemyHSNKso7m2ffbXTQTak7vFn50G2dN0b/MhOMsuHb1eiigD/2Q==" alt="북마크">
                        <img class="report" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgPHBhdGggc3Ryb2tlPSIjREREIiBzdHJva2Utd2lkdGg9IjEuMiIgZD0iTTMuMzUsMTIuNjUgTDE0LjY1LDEyLjY1IEwxNC42NSw3LjUgQzE0LjY1LDQuMzc5NTkxMTYgMTIuMTIwNDA4OCwxLjg1IDksMS44NSBDNS44Nzk1OTExNiwxLjg1IDMuMzUsNC4zNzk1OTExNiAzLjM1LDcuNSBMMy4zNSwxMi42NSBaIi8+CiAgICA8cGF0aCBmaWxsPSIjREREIiBmaWxsLXJ1bGU9Im5vbnplcm8iIGQ9Ik0wLjAwNzY1Mzk4NzE1LDE3LjA2NDU0NTUgQzAuMDAyNjA4MTkwNTgsMTcuMDI3NDA2IC01LjYyNzU4MTczZS0xMywxNi45ODk0NjkxIC01LjYyNzU4MTczZS0xMywxNi45NTA5MDkxIEwtNS42Mjc1ODE3M2UtMTMsMTQuMzE0NTQ1NSBDLTUuNjI3NTgxNzNlLTEzLDEyLjk1ODkzNzQgMS4wNzQ1MTY2LDExLjg2IDIuNCwxMS44NiBMMTUuNiwxMS44NiBDMTYuOTI1NDgzNCwxMS44NiAxOCwxMi45NTg5Mzc0IDE4LDE0LjMxNDU0NTUgTDE4LDE2Ljk1MDkwOTEgQzE4LDE2Ljk4OTQ2OTEgMTcuOTk3MzkxOCwxNy4wMjc0MDYgMTcuOTkyMzQ2LDE3LjA2NDU0NTUgQzE3Ljk5NzM5MTgsMTcuMTAxNjg0OSAxOCwxNy4xMzk2MjE5IDE4LDE3LjE3ODE4MTggQzE4LDE3LjYzMDA1MTIgMTcuNjQxODI3OCwxNy45OTYzNjM2IDE3LjIsMTcuOTk2MzYzNiBMMC44LDE3Ljk5NjM2MzYgQzAuMzU4MTcyMiwxNy45OTYzNjM2IC0xLjY0OTc5MTQxZS0xMywxNy42MzAwNTEyIC0xLjY0OTc5MTQxZS0xMywxNy4xNzgxODE4IEMtMS42NDk3OTE0MWUtMTMsMTcuMTM5NjIxOSAwLjAwMjYwODE5MDU4LDE3LjEwMTY4NDkgMC4wMDc2NTM5ODcxNSwxNy4wNjQ1NDU1IFogTTEuNiwxNi4zNiBMMTYuNCwxNi4zNiBMMTYuNCwxNC4zMTQ1NDU1IEMxNi40LDEzLjg2MjY3NjEgMTYuMDQxODI3OCwxMy40OTYzNjM2IDE1LjYsMTMuNDk2MzYzNiBMMi40LDEzLjQ5NjM2MzYgQzEuOTU4MTcyMiwxMy40OTYzNjM2IDEuNiwxMy44NjI2NzYxIDEuNiwxNC4zMTQ1NDU1IEwxLjYsMTYuMzYgWiIvPgogICAgPHBhdGggc3Ryb2tlPSIjREREIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMSIgZD0iTTkuNSw0LjUgQzExLjI5NTMyODgsNC44Nzk1NTcyOSAxMi4xMTAxODg4LDYuMzA3NDU0NDMgMTEuOTQ0NTgwMSw4Ljc4MzY5MTQxIi8+CiAgPC9nPgo8L3N2Zz4K" alt="신고">
                    </div> -->
                </div>
                <div class="infos">전문답변 추천 0개, 공감 0개, 댓글 0개</div>
            </div>
            <input type="hidden" class="worryNumber" name="worryNumber" value="${worry.getWorryNumber()}">
            <div id="story-comments" class="Comments__CommentsWrapper-sc-1m6x198-0 jzhOmf" style="padding-top: 40px; margin-top: -40px;">
               
               
               <!-- 전문가 댓글 -->
			<div class="history__main__histories MyComments" id="wrap_worryManagerComment" "></div>
               <!-- 유저 댓글 -->
			<div class="history__main__histories MyComments" id="wrap_worryComment" style="margin-bottom: 95px;"></div>
				
				
				
				
				
				<!-- 댓글 달기창 -->	
               <c:if test="${userStatus == 0}">
                <div class="story-write-wrapper">
                    <div class="story-write">
                    <input type="hidden" name="worryNumber" value="${worry.getWorryNumber()}">
                        <div class="CommentWrite__CommentWriteWrapper-sc-1lrpcsu-0 ikBDcZ">
                            <textarea id="commentWrite_textarea" name="worryCommentContent" placeholder="따뜻한 관심을 보여주세요" class="contents" style="height: 42px;"></textarea>
                            <button class="btn submit" type="button" onclick="send()">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em"
                                    wmlns="http://www.w3.org/2000/svg">
                                    <path d="M186.301 339.893L96 249.461l-32 30.507L186.301 402 448 140.506 416 110z"></path>
                                </svg>
                            </button>
                        </div>    
                    </div>
                </div>
                </c:if>
                <c:if test="${userStatus == 1}">
                  <div class="story-write-wrapper">
                    <div class="story-write">
                    <input type="hidden" name="worryNumber" value="${worry.getWorryNumber()}">
                        <div class="CommentWrite__CommentWriteWrapper-sc-1lrpcsu-0 ikBDcZ">
                            <textarea id="commentManagerWrite_textarea" name="worryCommentManagerContent" placeholder="따뜻한 관심을 보여주세요" class="contents" style="height: 42px;"></textarea>
                            <button class="btn submit" type="button" onclick="expertsend()">
                                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1em" width="1em"
                                    wmlns="http://www.w3.org/2000/svg">
                                    <path d="M186.301 339.893L96 249.461l-32 30.507L186.301 402 448 140.506 416 110z"></path>
                                </svg>
                            </button>
                        </div>    
                    </div>
                </div>
               </c:if>
                <c:if test="${userStatus == null}">
                  <div class="story-write-wrapper">
                <form action="${pageContext.request.contextPath}/worry/WorryCommentManagerWriteOK.bo" name="writeExpertForm" method="post">
                    <div class="story-write">
                    <%-- <input type="hidden" name="worryNumber" value="${worry.getWorryNumber()}"> --%>
                        <div class="CommentWrite__CommentWriteWrapper-sc-1lrpcsu-0 ikBDcZ">
                            <textarea name="worryCommentManagerContent" placeholder="로그인 후 이용 가능합니다." class="contents" style="height: 42px;"></textarea>
                        </div>    
                    </div>
                    </form>
                </div>
               </c:if>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var worryNumber = "${worry.getWorryNumber()}";
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script
src="${pageContext.request.contextPath}/app/worryStroy/assets/js/worrydetailmanager.js"></script> 
  <script
	src="${pageContext.request.contextPath}/app/worryStroy/assets/js/worrydetailpage.js"></script>
</html>


