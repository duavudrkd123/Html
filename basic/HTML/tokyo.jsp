<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="layout.css">
    <title>Document</title>
    <label style="font-size: 20px;" />
</head>

<body>
    <%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("ID");
    String date = request.getParameter("DATE");
    String sex = request.getParameter("sex");
    String s1 = null;
    String s2 = null;
    if(sex.equals("male")){
        s1 = "checked";
    } else {
        s2 = "checked";
    }
    String email = request.getParameter("EMAIL");
    String mail = request.getParameter("MAIL");
    String num = request.getParameter("NUM");
    String num1 = request.getParameter("NUM1");
    String num2 = request.getParameter("NUM2");
    String job = request.getParameter("JOB");
    String[] subject = request.getParameterValues("SUBJECT");
    String h1 =null;
    String h2 =null;
    String h3 =null;
    String h4 =null;
    for(String hob : subject) {
            if(hob.equals("listening")){
            h1 = "checked";
            }if(hob.equals("Reading")){
            h2 = "checked";}
           if(hob.equals("Study")){
            h3 = "checked";}
           if(hob.equals("eating")){
            h4 = "checked";}
           
        }
  
    String itrd = request.getParameter("ITRD");
  
    %>
    <h2>CSS Layout Float</h2>
    <p>In this example, we have created a header, two columns/boxes and a footer. On smaller screens, the columns will
        stack on top of each other.</p>
    <p>Resize the browser window to see the responsive effect (you will learn more about this in our next chapter - HTML
        Responsive.)</p>
    <header>
        <h2>Cities</h2>
    </header>

    <section>
        <nav>
            <ul>
                <li><a href="layout.html">London</a></li>
                <li><a href="paris.html">Paris</a></li>
                <li><a href="tokyo.html">Tokyo</a></li>
            </ul>
        </nav>
        <article>
            <h1>Tokyo</h1>
            <form action="tokyo.jsp" method="POST">
                <label>아이디<input type="text" value=<%=id%>></label><br>
                <label>생년월일<input type="date" value=<%=date%>></label><br>
                <label>성별
                    <input type="radio" name="sex" value="male" <%=s1%>>남자
                    <input type="radio" name="sex" value="female" <%=s2%>>여자</label><br>
                <label>E-mail: <input type="text" value=<%=email%>></label><br>
                <label style="font-size: 20px;">메일 수신<input style="font-size: 10px;" type="radio" name="MAIL" value="Y"
                        checked>수신동의<input type="radio" name="MAIL" value="N">수신거부</label><br>
                <label>핸드폰<select>
                        <option value=<%=num%>><%=num%></option>
                    </select> - <input type="text" value=<%=num1%>> - <input type="text" value=<%=num2%>></label><br>
                <label>직업<select>
                        <option value=<%=job%>><%=job%>
                    </select><br>
                    <label>취미
                        <input type="checkbox" <%=h1%>>음악 듣기
                        <input type="checkbox" <%=h2%>>책읽기
                        <input type="checkbox" <%=h3%>>공부
                        <input type="checkbox" <%=h4%>>먹기</label><br>
                    <label>자기소개<textarea rows="5" cols="50"><%=itrd%></textarea></label>
            </article>
        </section>
    
        <footer>
            <p>Footer</p>
        </footer>
    
    </body>
    
    </html>