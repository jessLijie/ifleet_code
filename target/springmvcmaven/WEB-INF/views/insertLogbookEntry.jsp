<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Insert Logbook Records</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    />
  </head>
  <style>
    table {
      border-collapse: collapse;
      width: 50%;
    }

    td {
      padding: 8px;
    }

    input, select {
      width: 100%;
      border: none;
      border-bottom: 1px solid #000; /* You can adjust the color as needed */
    }
  </style>
  <%@include file="navbar.jsp"%>
  <body>
    <div style="padding-left: 260px">
      <form action="/logbook/insert/new" method="post">
        <h1>Inserting Logbook Records</h1>
        <table>
          <tr>
            <td>
              <input type="hidden" name="driverName" value="Luka" />
            </td>
          </tr>
          <tr>
            <td>Driver Name:</td>
            <td>
              <input type="text" name="driverName" value="Luka" disabled />
            </td>
          </tr>
          <tr>
            <td>Type:</td>
            <td>
              <select name="type">
                <option value="campus">campus</option>
                <option value="reserved">reserved</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>Date:</td>
            <td>
              <input type="date" name="date" value="" />
            </td>
          </tr>
          <tr>
            <td>Petrol: RM</td>
            <td>
              <input type="number" step="any" name="petrol" value="" />
            </td>
          </tr>
        </table>
        <div style="margin-left: 400px;margin-top: 25px;">
        <button type="submit" style="border-radius: 0.5rem" >Submit <i
          class="fa fa-paper-plane"
          aria-hidden="true"
        ></i
      ></button>
        </div>
      </form>
    </div>
  </body>
</html>
