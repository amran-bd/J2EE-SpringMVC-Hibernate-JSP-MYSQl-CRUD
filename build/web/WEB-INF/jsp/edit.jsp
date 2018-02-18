<%-- 
    Document   : edit
    Created on : Dec 4, 2015, 1:02:09 AM
    Author     : Md.Amran
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>Edit Product Details</title>  
    </head>  
    <body>  
        <center>  
            <div style="color: teal; font-size: 30px">Edit Product Details</div>  
            <c:url var="productUpdate" value="updateProduct.html" />  
            <form:form id="registerForm" modelAttribute="product" method="post" action="update">  
                <table width="400px" height="150px">  
                    <tr>  
                        <td><form:label path="price">Price</form:label></td>  
                        <td><form:input path="price" value="${productObject.price}" /></td>  
                    </tr>  
                    <tr>  
                        <td><form:label path="productCode">Product Code</form:label></td>  
                        <td><form:input path="productCode" value="${productObject.productCode}"/></td>  
                    </tr>  
                    <tr>  
                        <td><form:label path="productName">Product Name</form:label></td>  
                        <td><form:input path="productName" value="${productObject.productName}"/></td>  
                    </tr>  
                    <tr>  
                        <td><form:label path="vat">Vat</form:label></td>  
                        <td><form:input path="vat" value="${productObject.vat}"/></td>  
                    </tr>  
                    <tr>  
                        <td></td>  
                        <td><input type="submit" value="Update" />  
                        </td>  
                    </tr>  
                </table>  
            </form:form>  
            <a href="list">Click Here To View Product List</a>
        </center>  
    </body>  
</html>  
