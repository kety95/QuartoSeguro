/**
 * Confirmação de exclusão de reserva
 */

 function confirmarCancelamento(reserva_id){
	 let resposta = confirm("Confirma a exclusão da reserva?")
	 if (resposta === true){
		 //redirecionando para documento java com o parâmetro reserva_id
		 window.location.href = "delete?reserva_id=" + reserva_id
	 }
	 
	 
 }