<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<!-- %@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %-->  

<petclinic:layout pageName="home">
    <h2><fmt:message key="welcome"/></h2>
    <div class="row">
    
    	<table border="0" >
	    <tr>
	        <td width="150px">
	        	<spring:url value="/resources/images/logoUS.png" htmlEscape="true" var="logoUS"/>
            	<img class="img-responsive" src="${logoUS}"/>
            </td>
            <td width="20px"></td>
	        <td width="500px">
	        	<h2> Project ${title} </h2>
	        	<p><h2> Group ${group} </h2> </p>
	        </td>
	    </tr>
	    <tr height="30px">
	    </tr>
	</table>
    
    	<!-- <div class="col-md-12">
            <spring:url value="/resources/images/logoUS.png" htmlEscape="true" var="logoUS"/>
            <img class="img-responsive" src="${logoUS}"/>
        </div> -->
        
    	<!-- <h2> Project ${title} </h2>
    	<p><h2> Group ${group} </h2> </p> -->
    	<p> Members:
    		<ul>
    		<c:forEach items="${persons}" var="person">
    			<li> ${person.firstName} &nbsp; ${person.lastName}</li>
    		</c:forEach>
    		</ul>
    	</p>
    
        <div class="col-md-12">
            <spring:url value="/resources/images/pets.png" htmlEscape="true" var="petsImage"/>
            <img class="img-responsive" src="${petsImage}"/>
        </div>
    </div>
</petclinic:layout>
