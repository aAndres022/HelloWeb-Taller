<%-- 
    Document   : index
    Created on : 30 ago 2026, 10:08:45 p.m.
    Author     : leona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Estudiante</title>
    </head>
    <body>
        <h1>REGISTRO ESTUDIANTE</h1>
        
        <!-- El form envuelve correctamente los inputs y apunta a response.jsp -->
        <form name="NameInputForm" action="response.jsp" method="GET">
            <label>Enter ur Name:</label><br>
            <input type="text" name="name" required /><br><br>
            
            <label>Enter birth date (YYYY-MM-DD):</label><br>
            <input type="text" name="birthDate" required /><br><br>
            
            <input type="submit" value="OK" />
        </form>
    </body>
</html>