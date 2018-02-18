<%-- 
    Document   : list
    Created on : Dec 4, 2015, 12:49:04 AM
    Author     : Md.Amran
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>Amran | Product Details</title>  
    </head>  
    <body>  
        <center>  
            <div style="color: teal; font-size: 30px">Product Details</div>  
            <c:if test="${!empty productList}">  
                <table border="1" bgcolor="black" width="600px">  
                    <tr  
                        style="background-color: teal; color: white; text-align: center;" height="40px">  
                        <td>Product Id</td>  
                        <td>Edit</td> 
                        <td>Delete</td> 
                    </tr>  
                    <c:forEach items="${productList}" var="prd">  
                        <tr  
                            style="background-color: white; color: black; text-align: center;" height="30px">  
                            <td><c:out value="${prd.productId}" /></td>  

                            <td><a href="edit?id=${prd.id}">Edit</a></td>  
                            <td><a href="delete?id=${prd.id}">Delete</a></td>  
                        </tr>  
                    </c:forEach>  
                </table>  
            </c:if>  
            <a href="form">Click Here to add new Product</a>  
        </center>  
    </body>  
</html>  