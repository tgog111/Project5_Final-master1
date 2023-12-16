<%--
  Created by IntelliJ IDEA.
  User: gongs
  Date: 2023-12-02
  Time: 오전 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Form</title>
    <style>
        body{
            background-color: #FFFCF2;
        }
        h1{
            font-family:"Georgia",serif;
            color:#FFCD66;
            display:flex;
            justify-content: center;
            align-items: center;
        }
        form{
            display:flex;
            justify-content: center;
            align-items: center;
        }
        table{
            font-family:"Georgia",serif;
            color:#FFBC35;
            font-weight: bold;
        }
        input[type="submit"]{
            background-color:#FFCCCC;
            border-color:#FF9696;
            border-radius:5px;
        }
        input[type="button"]{
            background-color:#FFCCCC;
            border-color:#FF9696;
            border-radius:5px;
        }
    </style>
</head>
<body>

<c:set var="boardDAO" value="<new com.example.BoardDAO()>" scope="page" />
<c:set var="id" value="${param.id}"/>
<c:set var="u" value="${boardDAO.getBoard(id)}"/>

<h1>Edit Form</h1>
<form action="../editok" method="post">
    <input type="hidden" name="seq" value="${u.seq}"/>
    <table>
        <tr><td>드라마명:</td><td><input type="text" name="title" value="${u.title}"/></td></tr>
        <tr><td>대표 배우:</td><td><input type="text" name="actor" value="${u.actor}" /></td></tr>
        <tr><td>줄거리:</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
        <tr><td>
            <input type="radio" id="satisfaction1" name="satisfaction" value="1" ${u.satisfaction == 1 ? 'checked' : ''}>
            <label for="satisfaction1">1</label>
            <input type="radio" id="satisfaction2" name="satisfaction" value="2" ${u.satisfaction == 2 ? 'checked' : ''}>
            <label for="satisfaction2">2</label>
            <input type="radio" id="satisfaction3" name="satisfaction" value="3" ${u.satisfaction == 3 ? 'checked' : ''}>
            <label for="satisfaction3">3</label>
            <input type="radio" id="satisfaction4" name="satisfaction" value="4" ${u.satisfaction == 4 ? 'checked' : ''}>
            <label for="satisfaction4">4</label>
            <input type="radio" id="satisfaction5" name="satisfaction" value="5" ${u.satisfaction == 5 ? 'checked' : ''}>
            <label for="satisfaction5">5</label>
        </td>
        </tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>
