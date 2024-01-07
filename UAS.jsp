<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://localhost/phi_toyota?user=root&password=" 
	catalogUri="/WEB-INF/queries/Schema1.xml">
select
  {[Measures].[Amount], [Measures].[Price], [Measures].[Total Price]} ON COLUMNS,
  {[Product].[Semua Product]} ON rows
from Sales
</jp:mondrianQuery>

<c:set var="title01" scope="session">UAS - Cube Sales</c:set>