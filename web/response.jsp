<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello.StudentHandler" />
        <jsp:setProperty name="mybean" property="*"/>
        <jsp:useBean id="clock" class="java.util.Date" />
        
        <c:choose>
            <c:when test="${clock.hours >= 6 && clock.hours < 12}">
                <h1>Buenos días, <jsp:getProperty name="mybean" property="name" />!</h1>
            </c:when>
            <c:when test="${clock.hours >= 12 && clock.hours < 19}">
                <h1>Buenas tardes, <jsp:getProperty name="mybean" property="name" />!</h1>
            </c:when>
            <c:otherwise>
                <h1>Buenas noches, <jsp:getProperty name="mybean" property="name" />!</h1>
            </c:otherwise>
        </c:choose>

        <p>Tu fecha de nacimiento es: <jsp:getProperty name="mybean" property="birthDate" /></p>
        <p>Tienes ${mybean.age} años.</p>
    </body>
</html>