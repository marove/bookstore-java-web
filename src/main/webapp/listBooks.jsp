<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Books list</title>
</head>
<body>
<%
	Connection conexion=null;
	Statement  sentencia=null;
	ResultSet rs=null;
	try  {
		Class.forName("com.mysql.jdbc.Driver");

		conexion = DriverManager.getConnection("jdbc:mysql://localhost/bookstore",
				"root",
				"user");

		sentencia= conexion.createStatement();

		String consultaSQL=  "select isbn,tittle,category from books";

		rs=sentencia.executeQuery(consultaSQL);

		while(rs.next()) { %>
			<%=rs.getString("isbn")%>
			<%=rs.getString("tittle")%>
			<%=rs.getString("category")%>
			<br/>

	<% }

}catch (ClassNotFoundException e) {
	System.out.println("Error en la carga del driver"
			+ e.getMessage());

}catch (SQLException e) {
	System.out.println("Error accediendo a la base de datos"
			+ e.getMessage());
}
finally {
	if (rs != null) {

		try {rs.close();} catch (SQLException e)
		{System.out.println("Error cerrando el resultset" + e.getMessage());}

	}

	if (sentencia != null) {

		try {sentencia.close();} catch (SQLException e)
		{System.out.println("Error cerrando la sentencia" + e.getMessage());}

	}
	if (conexion != null) {

		try {conexion.close();} catch (SQLException e)
		{System.out.println("Error cerrando la conexion" + e.getMessage());}
	}
}
%>
<a href="registerBookForm.jsp">Register book</a>
</body>
</html>
