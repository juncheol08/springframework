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
    <title>test5</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

<nav>
    <ul>
        <li><a href="${path1}/ajax/">Home</a></li>
    </ul>
</nav>
<input type="text" name="age" id="age" placeholder="나이 입력" required><br>
<input type="text" name="name" id="name" placeholder="이름 입력" required><br>
<button id="btn6" type="button">Post 전송</button>

<script>
    $(document).ready(function () {
        $("#btn6").click(function () {
            var human = {"age":parseInt($(this).val()), "name":$(this).val()};
            $.ajax({
                type:"post",
                url:"${path1}/ajax/test6pro",
                data:human,
                success:function(res) { console.log("성공",res); },
                error:function (err) { console.log("실패",err);}
            });
        });
    });
</script>


</body>
</html>
