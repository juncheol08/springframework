<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 화면</title>
</head>
<body>
<h2>Hello World!</h2>
<nav>
    <a href="${path1}/admin/list">회원 목록</a>
    <a href="${path1}/fileupload/fileUpload2">fileUpload2</a>
    <a href="${path1}/fileupload/fileUpload3">fileUpload3</a>
    <div class="navbar-end">
        <div class="navbar-item">
            <div style="padding-right: 10px">
                <c:if test="${not empty sid}">
                    ${sid} 회원님 환영합니다.
                </c:if>
            </div>
            <div class="buttons">
                <c:if test="${not empty sid && sid != 'admin'}"> <%-- 회원으로 로그인한 경우 --%>
                    <%--<a href="${path1}/user/mypage.do" class="button is-link is-rounded" >--%>
                    <a href="${path2}/user/mypage.do" class="button is-link is-rounded b1 button-bg" >
                        마이페이지
                    </a>
                    <%--<a href="${path1}/user/logout.do" class="button is-link2 is-rounded" >--%>
                    <a href="${path1}/user/logout.do" class="button is-link2 is-rounded b2 button-bg2" >
                        로그아웃
                    </a>
                </c:if>
                <c:if test="${empty sid}"> <%-- 로그인을 안 한 경우 --%>
                    <%--<a href="${path1}/user/term.do" class="button is-link is-rounded" >--%>
                    <a href="${path1}/user/term.do" class="button is-link is-rounded b1 button-bg" >
                        회원가입
                    </a>
                    <%--<a href="${path1}/user/login.do" class="button is-link2 is-rounded" >--%>
                    <a href="${path1}/user/login.do" class="button is-link2 is-rounded b2 button-bg2" >
                        로그인
                    </a>
                </c:if>
                <c:if test="${sid.equals('admin')}"> <%-- 관리자로 로그인 한 경우 --%>
                    <%--<a href="${path1}/admin/adminMain.do" class="button is-link is-rounded " >--%>
                    <a href="${path1}/admin/adminMain.do" class="button is-link is-rounded b1 button-bg" >
                        관리자페이지
                    </a>
                    <%--<a href="${path1}/user/logout.do" class="button is-link2 is-rounded" >--%>
                    <a href="${path1}/user/logout.do" class="button is-link2 is-rounded b2 button-bg2" >
                        로그아웃
                    </a>
                </c:if>
            </div>
        </div>
    </div>
</nav>
</body>
</html>
