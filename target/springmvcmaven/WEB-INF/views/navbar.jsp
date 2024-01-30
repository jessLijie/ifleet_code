<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>iFleet</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  </head>
  <style>
    body {
      overflow-x: hidden;
      font-family: "Roboto", sans-serif;
      font-size: 16px;
    }

    /* Toggle Styles */

    #viewport {
      padding-left: 250px;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
    }

    #content {
      width: 100%;
      position: relative;
      margin-right: 0;
    }

    /* Sidebar Styles */

    #sidebar {
      z-index: 1000;
      position: fixed;
      left: 250px;
      width: 250px;
      height: 100%;
      margin-left: -250px;
      overflow-y: auto;
      background: #37474f;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
    }

    #sidebar header {
      background-color: #263238;
      font-size: 20px;
      line-height: 52px;
      text-align: center;
    }

    #sidebar header a {
      color: #fff;
      display: block;
      text-decoration: none;
    }

    #sidebar header a:hover {
      color: #fff;
    }

    #sidebar .nav {
    }

    #sidebar .nav a {
      background: none;
      border-bottom: 1px solid #455a64;
      color: #cfd8dc;
      font-size: 14px;
      padding: 16px 24px;
    }

    #sidebar .nav a:hover {
      background: none;
      color: #eceff1;
    }

    #sidebar .nav a i {
      margin-right: 16px;
    }
  </style>
  <body>
    <div id="viewport">
        <!-- Sidebar -->
        <div id="sidebar">
          <header>
            <a href="/home">iFleet Management</a>
          </header>
          <ul class="nav">
            <li>
              <a href="/license/">
                <i class="zmdi zmdi-view-dashboard"></i> License
              </a>
            </li>
            <li>
              <a href="/logbook/">
                <i class="zmdi zmdi-link"></i> Logbook
              </a>
            </li>
            <li>
              <a href="/">
                <i class="zmdi zmdi-link"></i> Log Out
              </a>
            </li>
              
             
          </ul>
        </div>
        <!-- Content -->
        <div id="content">
          <nav class="navbar navbar-default">
            <div class="container-fluid">
              <ul class="nav navbar-nav navbar-right">
                <li>
                  <a href="#"><i class="zmdi zmdi-notifications text-danger"></i>
                  </a>
                </li>
                <li><a href="#">iFleet</a></li>
              </ul>
            </div>
          </nav>
          
        </div>
      </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>
