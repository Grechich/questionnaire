<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.questionnaire.QuestionsServlet" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Results</title>
</head>
<body>
<%
    HashMap<String, Integer> statistic = (HashMap<String, Integer>) session.getAttribute("statistic");
    String a1 = "16-20";
    String b1 = "21-30";
    String c1 = "30-90";
    String a2 = "Ukraine";
    String b2 = "other";
%>
<h1>Results</h1>
<table cellspacing="2" border="1" cellpadding="5" width="300">
    <tr>
        <td>Age</td>
        <td><%=a1%>
        </td>
        <td><%=((HashMap<String, Integer>) session.getAttribute("statistic")).get(a1)%>
        </td>
    </tr>
    <tr>
        <td>Age</td>
        <td><%=b1%>
        </td>
        <td><%=((HashMap<String, Integer>) session.getAttribute("statistic")).get(b1)%>
        </td>
    </tr>
    <tr>
        <td>Age</td>
        <td><%=c1%>
        </td>
        <td><%=((HashMap<String, Integer>) session.getAttribute("statistic")).get(c1)%>
        </td>
    </tr>
    <tr>
        <td>Country</td>
        <td><%=a2%>
        </td>
        <td><%=((HashMap<String, Integer>) session.getAttribute("statistic")).get(a2)%>
        </td>
    </tr>
    <tr>
        <td>Country</td>
        <td><%=b2%>
        </td>
        <td><%=((HashMap<String, Integer>) session.getAttribute("statistic")).get(b2)%>
        </td>
    </tr>
</table>

<form action="/index.html" method="POST">
    <input type="submit" value="Home">
</form>
</body>
</html>