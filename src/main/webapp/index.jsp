


<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "oracle.jdbc.OracleDriver"%>

<html>
<head>
<body>

<%@ page import="java.util.*" %>

<%@ page import="oracle.jdbc.OracleDriver" %>

<% String databaseUrl = "jdbc:oracle:thin:SIMPLON/SIMPLON@LOCALHOST:1521:XE";

String requeteSql = "SELECT NAME,CITY from TEAMS where city = 'San Francisco';";

        DriverManager.registerDriver(new OracleDriver());

        Connection connexion = DriverManager.getConnection(databaseUrl);
        Statement requete = connexion.createStatement();
        ResultSet resultat = requete.executeQuery(requeteSql);
        while (resultat.next()) {
            String nomequipe = resultat.getString("NAME");
            String ville = resultat.getString("CITY");
            out.println("Nom de l'équipe qui se trouve à " + ville + " : " + nomequipe");
        }
        resultat.close();
        requete.close();
        connexion.close();
    
    %>

</body>
<html>




