<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jQuery 폼 요소에서 유효성 검사 - check3.jsp</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <div class="container">
        <h2>jQuery를 이용한 폼 유효성 검증</h2>
        <hr>

            id : <input type="text" name="id" id="id" > <br>
            pw : <input type="password" name="pw" id="pw" > <br>
            <button type="button" id="submit-btn">확인</button>
    </div>
    <script>
        $(document).ready(function () {
            $("#submit-btn").click(function () {
                var id = $("#id").val();
                var pw = $("#pw").val();

                if(id=="" || pw==""){
                    alert("아이디 또는 비밀번호 입력칸이 비어있습니다.")
                    return false;
                }
                if(id.length<5 || id.length>12) {
                    alert("아이디의 글자 수가 맞지 않습니다. 5~12글자 사이로 입력하시기 바랍니다.")
                    return false;
                }
                if(pw.length<8 || pw.length>12) {
                    alert("비밀번호의 글자 수가 맞지 않습니다. 8~12글자 사이로 입력하시기 바랍니다.")
                    return false;
                }
                var idReg = /^[a-z0-9]{5,12}$/g;
                if(!idReg.test(id)){
                    alert("아이디 입력 형식이 맞지 않습니다.")
                    return;
                }
                var pwReg = /^[a-zA-Z0-9]{8,12}$/g;
                if(!pwReg.test(pw)){
                    alert("비밀번호 입력 형식이 맞지 않습니다.")
                    return;
                }
                location.href = "./check3pro?id="+id+"&pw="+pw;
            })
        })

    </script>


</body>
</html>
