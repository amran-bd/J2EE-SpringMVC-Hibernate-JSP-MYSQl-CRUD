<%-- 
    Document   : form
    Created on : Dec 3, 2015, 4:51:12 PM
    Author     : Amran Hossain
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"&gt;
    <html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product Form</title>
</head>
<body>
    <center>
        <div style="color: teal; font-size: 30px">Product Add Form</div>
        <c:url var="productAdd" value="addProduct.html" />
        <form:form id="registerForm" modelAttribute="product" method="post" action="add">
            <table width="400px" height="150px">
                <tr>
                    <td>
                        <form:label path="productId">Product Id</form:label>
                        </td>
                        <td>
                        <form:input path="productId"  />
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="price">Price</form:label>
                        </td>
                        <td>
                        <form:input path="price" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="productCode">Product Code</form:label>
                        </td>
                        <td>
                        <form:input path="productCode" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="productName">Product Name</form:label>
                        </td>
                        <td>
                        <form:input path="productName" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Add-Product" /></td>
                </tr>
            </table>
        </form:form>
        <a href="list">Click Here To View Product List</a>
    </center>
</body>
</html>
