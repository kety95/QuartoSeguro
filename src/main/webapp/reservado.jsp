<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.JavaBeans" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Quarto Seguro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style/home.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <style>
    	.botao1 {
		    display: inline-block;
		    padding: 10px 20px;
		    background-color: #FE937F;
		    color: #fff;
		    text-decoration: none;
		    border-radius: 5px;
		    margin-top: 10px;
		}
    </style>
</head>

<body>
	<nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class='bx bx-menu' style='color:#d0d0d0'></i>
        </label>

        <label class="logo">
            <a href="index.html" style="background-color: #fff;"><img src="img/logo.png" alt=""></a>
        </label>
        <ul>
            <li><a class="active" href="index.html">Home</a></li>
            <li><a href="#">Quem Somos</a></li>
            <li><a href="#">Fazer Login</a></li>
            <li><a href="#">Ajuda e Suporte</a></li>

        </ul>
    </nav>
    
    <div class="container mt-5">
		<h3>Reserva efetuada!</h3>
		
		<table >
	        <thead>
	            <tr>
	                <th><p>Data da Reserva</p></th>
	            </tr>
	        </thead>
	        <tbody>
	            <% 
		            ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("reserva");
		            for (int i = 0; i < lista.size(); i++) {
	            %>
	            <tr>  
		            <%
					    String dataString = lista.get(i).getData_inicio();
		            	String dataFimString = lista.get(i).getData_fim();
		            	
					    Date data = new SimpleDateFormat("yyyy-MM-dd").parse(dataString);
					    String dataInicioFormatada = new SimpleDateFormat("dd/MM/yyyy").format(data);
					    					  
					    Date data2 = new SimpleDateFormat("yyyy-MM-dd").parse(dataFimString);
					    String dataFimFormatada = new SimpleDateFormat("dd/MM/yyyy").format(data2);

					%>
					<td><%= dataInicioFormatada %> -  <%= dataFimFormatada %> <tr></tr> </td>
	                <td>   <a href="javascript: confirmarCancelamento(<%= lista.get(i).getReserva_id() %>)" class="botao1">  Cancelar reserva</a></td>
	            </tr>
	            <% } %>
	        </tbody>
	    </table>
	   </div>
    <script src="scripts/confirmador.js"></script>
</body>
</html>