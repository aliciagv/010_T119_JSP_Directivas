<%-- 
    Document   : index.jsp
    Created on : 13-nov-2017, 18:47:04
    Author     : cice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="true"%><%-- ignora lenguaje EL, con atributo isELIgnored--%> 
<%-- directiva indicando operaciones que se deben ser realizadas antes de la compilación de código 
3 posibles directivas

page debe aparecer al principio de la página
<%@page import ="java.util.*"%>
<%@page import ="java.util.*, java.io.*"%>
java.lang es importado siemprte por el contendedor Web sin necesidad de indicarlo a través de la directiva page

include tiene un único atributo que es file
<%@include page="cabecera.html"%>


taglib


--%>
<%@page import ="java.util.Locale"%>

<%
   //Get the client's Locale
   Locale locale = request.getLocale();
   String language = locale.getLanguage();
   String country = locale.getCountry();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            out.println("Language : " + language  + "<br />");
            out.println("Country  : " + country   + "<br />");
         %>
        <%if (language.equals("en")) {
                %>
            <%@include file="libreria.jsp" %>
        <%} else { %>
            <%@include file="libreria2.jsp" %>
        <%}%>
    </body>
</html>
