<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Customer Entry Form </title>
	<style type="text/css"> @import url(resources/css/customer.css);</style>
</head>

<body>


<div id="global">

	<form:form method="post" modelAttribute="newCustomer">
		<fieldset>
			<legend>Add Customer</legend>
				
				 <p>
				 	<spring:message code="addCustomer.form.customerName.label"/>	                
	                <form:input type="text" id="name" path="userName" placeholder="Customer Name"/>
	                <form:errors path="userName" cssStyle="color:red;"/>
            	 </p>
            	
            	
            	<p>
	                <spring:message code="addCustomer.form.customerAddress.label"/>
	                <form:input type="text" id="address" path="address" placeholder="Customer Address"/>
	                <form:errors path="address"  cssStyle="color:red;"/>
            	</p>
            	            	             
            	<p>
	                <spring:message code="addCustomer.form.customerPassword.label"/>
	                <form:input type="password" id="password" path="password" placeholder="Customer Password"/>
	                <form:errors path="password"  cssStyle="color:red;"/>
            	</p>
            	            	
            	<p>
	                <spring:message code="addCustomer.form.customerGender.label"/>
	                <form:radiobutton value="Male" path="gender"/> Male
	                <form:radiobutton value="FeMale" path="gender"/> Female	                
            	</p>
            	
            	<p>            		
            		<input id="addCustomer" type="submit" value="Add Customer"/>
            	</p>
            	
		</fieldset>
	</form:form>
</div>

</body>

</html>