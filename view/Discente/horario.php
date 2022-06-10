<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);

require_once('../../app/controller/Noticia.php');
require_once('../../app/controller/Agendamento.php');
require_once('../../app/controller/Disponibilidade.php');

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdmTela3</title>
    <link rel="stylesheet" type="text/css" href="css/styleTela3.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
</head>

<body>

	<section>
		<div class="container">
			<div class="notas">
				<h2>Horários da Academia:</h2>
				<div class="notas">
					 <div class="semana">
					</div><!--semana-->
					<div class="calendario"><!--CALENDARIOOOOOOO
					--><h1>add calendario </h1>
					<?php
						$Agendamento = new Agendamento;
						$fkDisponibilidade = $Agendamento->findUnit(12);

						/*
						foreach ($Agendamentos as $key => $value) {?>
							<p><?php echo "Dias : ".$value->fkDisponibilidade;?></p>
						<?php
						}*/

						$HorarioAgendado = new Disponibilidade;
						$HorarioAgendados = $HorarioAgendado->findUnit($fkDisponibilidade->idAgendamento);

						foreach ($HorarioAgendados as $key => $value) {?>
							<p><?php echo "Dias : ".$value->dia;?></p>
							<p><?php echo "Horarios : ".$value->horaInicial;?></p>
							<p><?php echo "Horarios : ".$value->horaFinal;?></p>
						<?php
						}
					?>
						<img src="../../public/img/calendario.png" alt="" srcset="">
				</div><!--calendario-->
				</div><!--horarios-pt1-->
				
				<div class="horarios-pt2">
					<div class="seletor-periodo">
						<div class="meus-horarios">
						<h2>Meus Horários:</h2>
					</div><!--h2-->
						<div class="select">
						<select name="select">
							  <option value="valor1">Periodo 1</option>
							  <option value="valor2" selected>Periodo 2</option>
							  <option value="valor3">Periodo 2</option>
						</select>
					</div><!--select-->
					</div><!--seletor-periodo-->
					<div class="meus-horarios">
						<ul>
						<input type="date" name="" id="">
						</ul>
					</div><!--meus-horarios-->
				</div><!--horarios-pt2-->
			</div><!--horarios-->
		</div><!--container-->

	</section>

</body>

</html>