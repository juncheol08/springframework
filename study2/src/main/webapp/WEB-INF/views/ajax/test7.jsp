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
    <title>test7</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

<nav>
    <ul>
        <li><a href="${path1}/ajax/">Home</a></li>
    </ul>
</nav>
나이 :<input type="text" name="age" id="age" placeholder="나이 입력" required><br>
이름 : <input type="text" name="name" id="name" placeholder="이름 입력" required><br>
<button id="btn7" type="button">Post 전송</button>
<button id="remove" type="button">결과 비우기</button>
<div id="res">

</div>
<script>
    $(document).ready(function () {
        $("#btn7").click(function () {
            var test = {"age":parseInt($("#age").val()), "name":$("#name").val()};
            $.ajax({
                type:"post",
                url:"${path1}/ajax/test7pro",
                data:JSON.stringify(test),
                dataType:"json",
                contentType:"application/json",
                success:function(res) {
                    console.log("나이",res.age);
                    console.log("이름",res.name);
                    var txt = "<span>나이 "+res.age+"<span><br><span>이름 : "+res.name +"</span><hr>";
                    $("#res").append(txt);
                    },
                error:function (err) { console.log("실패",err);}
            });
        });
        $("#remove").click( function () {
            $("#res").empty();
        })
    });
</script>


</body>
</html>
