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
연번 :<input type="text" name="num" id="num" placeholder="연번 입력" value="4" readonly required><br>
제목 : <input type="text" name="title" id="title" placeholder="제목 입력" required><br>
<button id="btn8" type="button">Post 전송</button>
<button id="empty" type="button">결과 비우기</button>
<hr>
<h3>결과 목록</h3>
<div id="res">
    <table id="tb1">
        <thead>
        <tr>
            <th>연번</th>
            <th>제목</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>

<script>
    $(document).ready(function () {
        $("#btn8").click(function () {
            var test = {"num":parseInt($("#num").val()), "title":$("#title").val()};
            var txt="";
            $.ajax({
                type:"post",
                url:"${path1}/ajax/test8pro",
                data:JSON.stringify(test),
                dataType:"json",
                contentType:"application/json",
                success:function(res) {
                    console.log("성공",res);
                    console.log("성공",res[0]);
                    for(let i in res){
                        console.log(res[i]);
                        txt = txt + "<tr><td>"+res[i].num+"</td><td>"+res[i].title+"</td></tr>";
                    }
                    $("#tb1 tbody").html(txt);
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
