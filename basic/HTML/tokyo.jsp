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
    String id = request.getParameter("ID");
    String date = request.getParameter("DATE");
    String sex = request.getParameter("sex");
    String email = request.getParameter("EMAIL");
    String mail = request.getParameter("MAIL");
    String num = request.getParameter("NUM");
    String num1 = request.getParameter("NUM1");
    String num2 = request.getParameter("NUM2");
    String job = request.getParameter("JOB");
    String[] subject = request.getParameterValues("SUBJECT");
    String itrd = request.getParameter("ITRD");
  
    %>
    <label style="font-size: 20px;">아이디<input type="text" value=<%=id%>><br>
        <label>생년월일<input type="date" value=<%=date%>></label><br>
        <label>성별<input type="text" value=<%=sex%>><br>
        <label>E-mail: <input type="text" value=<%=email%>></label><br>
        <label>핸드폰<select>
        <option value=<%=num%>><%=num%></option>
        </select> - <input type="text" value=<%=num1%>> - <input type="text" value=<%=num2%>></label><br>

        <label>직업<select>
            <option value=<%=job%>><%=job%>
        </select><br>
     
    
        <label>자기소개<textarea rows="5" cols="50" ><%=itrd%></textarea></label>

            <h3>아이디: <%=id%></h3>
            <h3>날짜: <%=date%></h3>
            <h3>성별: <%=sex%></h3>
            <h3>이메일: <%=email%></h3>
            <h3>수신여부: <%=mail%></h3>
            <h3>전화번호: <%=num%>-<%=num1%>-<%=num2%></h3>
            <%
            for(String hob : subject) {
                %>
                
                <h3>취미: <%=hob%></h3>
                <% } %>
            <h3>직업: <%=job%></h3>
            <h3>자기소개: <%=itrd%></h3>


</body>

</html>