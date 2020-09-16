<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>value받아오기</title>
</head>

<body>
    <%
    request.setCharacterEncoding("UTF-8");
    String fName = request.getParameter("firstName");
    String lName = request.getParameter("lastName");
    String date = request.getParameter("hireDate");
    String select = request.getParameter("computer");
    %>
    <input type="text" value=<%=fName%>><br>
    <input type="text" value=<%=lName%>><br>
    <input type="date" value=<%=date%>><br>
    <select>
        <option value=<%=select%>><%=select%></option>
    </select>
    <h3>이름: <%=fName%></h3>
    <h3>성: <%=lName%></h3>
    <h3>날짜: <%=date%></h3>
    <h3>선택: <%=select%></h3>
</body>

</html>