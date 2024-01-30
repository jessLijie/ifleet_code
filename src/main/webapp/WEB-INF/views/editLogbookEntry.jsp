<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Logbook Records</title>
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
    input{
      border: none;
      border-bottom: 1px solid #000; 
    }
  </style>
  <%@include file="navbar.jsp"%>
  <body>
    <div style="padding-left: 260px">
      <form action="/logbook/update/${logbook.logbookID}" method="post">
        <h1>Logbook Records</h1>
        <table cellpadding="100px">
          <tr>
            <td>
              <input type="hidden" name="driverName" value="${logbook.driverName}" />
            </td>
            <td>
              <input type="hidden" name="type" value="${logbook.type}" />
            </td>
          </tr>
          <tr>
            <td>Driver Name:</td>
            <td>
              <input type="text" name="driverName" value="${logbook.driverName}" disabled />
            </td>
          </tr>
          <tr>
            <td>Type:</td>
            <td>
              <input type="text" name="type" value="${logbook.type}" disabled />
            </td>
          </tr>
          <tr>
            <td>Date:</td>
            <td>
              <input type="date" name="date" value="${logbook.date}" />
            </td>
          </tr>
          <tr>
            <td>Petrol: RM</td>
            <td>
              <input type="number" step="any" name="petrol" value="${logbook.petrol}" />
            </td>
          </tr>

          <c:if test="${logbook.type eq 'campus'}">
            <tr>
              <td>Campus Route:</td>
              <td>
                <input type="text" name="campusRoute" value="${logbook.campusRoute}" />
              </td>
              <input type="text" name="reservedDest" value="${logbook.reservedDest}" hidden />
              <input type="text" name="reservedDepart" value="${logbook.reservedDepart}" hidden />
             <input type="number" step="any" name="reservedToll" value="${logbook.reservedToll}" hidden />
             <input type="number" step="any" name="reservedMileage" value="${logbook.reservedMileage}" hidden />
              
          </c:if>

          <c:if test="${logbook.type eq 'reserved'}">
            <input type="text" name="campusRoute" value="${logbook.campusRoute}" hidden />
            <tr>
              <td>Destination:</td>
              <td>
                <input type="text" name="reservedDest" value="${logbook.reservedDest}" />
              </td>
            </tr>
            <tr>
            
              <td>Departure Point:</td>
              <td>
                <input type="text" name="reservedDepart" value="${logbook.reservedDepart}" />
              </td>
            </tr>
            <tr>
        
              <td>Toll Fare: RM</td>
              <td>
                <input type="number" step="any" name="reservedToll" value="${logbook.reservedToll}" />
              </td>
            </tr>
            <tr>
             
              <td>Mileage (km):</td>
              <td>
                <input type="number" step="any" name="reservedMileage" value="${logbook.reservedMileage}" />
              </td>
            </tr>
          </c:if>
        </table>
        <br />
        <c:if test="${role eq 'driver'}">
        <div style="margin-left: 280px;">
        <button type="submit" style="border-radius: 0.5rem" >Update <i
          class="fa fa-pencil"
          aria-hidden="true"
        ></i
      ></button></div></c:if>
      </form>
    </div>
  </body>
</html>
