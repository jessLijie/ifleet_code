<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>iFleet</title>
  </head>
  <style>
    body {
      background-image: url("https://images6.alphacoders.com/523/523681.jpg");
      background-size: cover;
    }

    .glow {
      
      color: #fff;
      text-align: center;
      animation: glow 1s ease-in-out infinite alternate;
    }

    @-webkit-keyframes glow {
      from {
        text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #292a62,
          0 0 40px #292a62, 0 0 50px #292a62, 0 0 60px #292a62, 0 0 70px #292a62;
      }

      to {
        text-shadow: 0 0 20px #fff, 0 0 30px #2b47e2, 0 0 40px #2b47e2,
          0 0 50px #2b47e2, 0 0 2b47e2 #2b47e2, 0 0 70px #2b47e2, 0 0 80px #2b47e2;
      }
    }
  </style>
  <%@include file="navbar.jsp"%>
  <body class>
    <div style="padding-left: 260px">
      <center>
        <h1 style="padding-top: 150px" class="glow">
          Welcome to the iFleet System
        </h1>
      </center>
    </div>
  </body>
</html>
