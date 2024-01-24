<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL</title>
</head>
<body>
<h1>JSTL CORE TAG</h1>
<h2>Print</h2>
 <c:out value = "${'Jay Shree Ram'}"/><br><br>
 <c:out value="${'Jay Shree Ganesh'}"></c:out>
 
<h2>Veriable</h2>

  <c:set var = "salary" scope = "session" value = "${2000*2}"/>
  <c:out value = "${salary}"/>
  
  <c:set var="D" scope="session" value="${50*50}"/>
  <c:out value ="${D}"/>
  
  <h2>Remove</h2>
  
  <c:set var = "salary" scope = "session" value = "${2000*2}"/>
      <p>Before Remove Value: <c:out value = "${salary}"/></p>
         <c:remove var = "salary"/>
      <p>After Remove Value: <c:out value = "${salary}"/></p>
      
  <h2>Catch</h2>
   
    <c:catch var ="catchException">
    
         <% int x = 5/0;%>
      </c:catch>

      <c:if test = "${catchException != null}">
         <p>The exception is : ${catchException} <br />
         There is an exception: ${catchException.message}</p>
      </c:if>   
      
      <h2>IF</h2>
     <c:set var = "salary" scope = "session" value = "${2000*2}"/>
      <c:if test = "${salary > 2000}">
         <p>My salary is:  <c:out value = "${salary}"/><p>
      </c:if>
  
    
      
     
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
</body>
</html>