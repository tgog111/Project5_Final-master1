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
        a{
            font-family:"Monaco",Monospace;
            background-color: #FFCCCC;
            color: #FF9696;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            border-radius: 5px;

        }
    </style>
    <title>Title</title>
</head>
<body>
<h1>Add New Drama</h1>
<form action="addok" method="post">
    <table>
        <tr><td>드라마명:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>대표 배우:</td><td><input type="text" name="actor"/></td></tr>
        <tr><td>줄거리:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td><a href="list">View All Records</a></td></tr>
        <tr><td>드라마 평점</td></tr>
        <tr>
            <td>
                <input type="radio" id="satisfaction1" name="satisfaction" value="1">
                <label for="satisfaction1">1</label>
                <input type="radio" id="satisfaction2" name="satisfaction" value="2">
                <label for="satisfaction2">2</label>
                <input type="radio" id="satisfaction3" name="satisfaction" value="3">
                <label for="satisfaction3">3</label>
                <input type="radio" id="satisfaction4" name="satisfaction" value="4">
                <label for="satisfaction4">4</label>
                <input type="radio" id="satisfaction5" name="satisfaction" value="5">
                <label for="satisfaction5">5</label>
            </td>
        </tr>
        <tr><td align="right"><input type="submit" value="Add Post"/></td></tr>
        <tr><td align="right"><input type="reset" value="Reset"></td></tr>
    </table>
</form>
</body>
</html>
