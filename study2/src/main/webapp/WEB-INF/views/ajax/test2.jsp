<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test1</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

<nav>
    <ul>
        <li><a href="${path1}/ajax/">Home</a></li>
    </ul>
</nav>

<button id="btn1">POST 전송</button>

<script>
    $(document).ready(function () {
        // var obj
        let fn1 = () => $.ajax({
            type:"POST",
            url:"${path1}/ajax/test2pro?msg=데이터전송",
            success:function (res) { console.log("성공",res);},
            error:function (err) { console.log("실패",err);}
        });
        $("#btn1").on("click", function () { fn1() });
    })
</script>


</body>
</html>
