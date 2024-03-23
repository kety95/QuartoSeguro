<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Quarto Seguro</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    
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
	    <form id="reservaForm" action="data">
	        <label for="data_inicio">Selecione a data de entrada:</label>
	        <input type="date" id="data_inicio" name="data_inicio">
	        <label for="data_fim">Selecione a data de saída:</label>
	        <input type="date" id="data_fim" name="data_fim">
	        <input type="button" id="finalizarReserva" value="Finalizar Reserva" onclick="validarData()">  
	        <input type="hidden" name="dataReserva" id="dataReservaInput">
	    </form>
	 </div>
    <script src="scripts/validador.js"></script>
</body>
</html>
