<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>


	<%
		String parola = request.getParameter("parola");
		String sinonimo = request.getParameter("sinonimo");
		String contrario = request.getParameter("contrario");
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection connessione = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dizionario","root","");
		
		Statement mioStatement = connessione.createStatement();
		
		String istruzioneSql = "INSERT INTO parola (pChiave,sinonimo,contrario) VALUES ('"+parola+"','"+sinonimo+"','"+contrario+"')";
	
		mioStatement.executeUpdate(istruzioneSql);
		
		out.println("parola inserita correttamente!!");
		
	%>

</body>
</html>