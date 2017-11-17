<%-- 
    Document   : controller
    Created on : 16 nov. 2017, 15:26:22
    Author     : PC-Acta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="log" class="controller.Login"/>
        <jsp:setProperty name="log" property="login" param="login"/>
        <jsp:setProperty name="log" property="mdp" param="mdp"/>
        Votre login est : <jsp:getProperty name="log" property="login"/><br/>
        Votre mot de passe est : <jsp:getProperty name="log" property="mdp"/>
    </body>
</html>
