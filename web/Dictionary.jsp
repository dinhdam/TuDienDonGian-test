<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/22/2018
  Time: 8:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String,String>dictionary = new HashMap<>();
%>
<%
    dictionary.put("fish","ca");
    dictionary.put("rice","com");
    dictionary.put("sing","bai hat");
    dictionary.put("cat","con meo");
    String search = request.getParameter("search");
    String result = dictionary.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }

%>
<form action="index.jsp" method="post"/>
<button type="submit">Go to Back</button>
</body>
</html>
