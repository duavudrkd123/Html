<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <%
    request.setCharacterEncoding("UTF-8");
    String fName = request.getParameter("fname");
    String lName = request.getParameter("lname");
    String email = request.getParameter("email");
    %>
    <table border="1" style="background-color: rgb(168, 243, 243);">
        <tr>
            <th>이름</th>
            <th width="200"><%=fName%></th> 
        </tr>
        <tr>
            <th>성</th>
            <th width="200"><%=lName%></th>
        </tr>
        <tr>
            <th>이메일</th>
            <th width="200"><%=email%></th>
        </tr>
    </table>
</body>

</html>