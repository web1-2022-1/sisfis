

<section>
	<div class="container">
		<div class="academiaDoCampus">
			<h2>Academia do campus</h2>
		</div>
		<!--academiaDoCampus-->
		<?php if ($nivel == 1) {
		?>
			<div class="painelDeEscolha">
				<li><a href="../home/dashboard.php?menuop=home">Regulamento</a></li>
				<li><a href="../home/dashboard.php?menuop=agendamento">Agendamento</a></li>
				<li><a href="../home/dashboard.php?menuop=noticias">Noticias</a></li>
				<li><a href="../home/dashboard.php?menuop=create">Cadastro</a></li>

			</div>
			<!--painelDeEscolha-->
	</div>
	<!--container-->

	<div class="container">
		<div class="notas">
			<?php

			$menuop = (isset($_GET["menuop"])) ? $_GET["menuop"] : "home";
			switch ($menuop) {

				case 'home':
					global $css;
					$css = ('href= "../ADM/css/styleTela1.css"');;
					include '../ADM/regulamento.php';
					break;
				case 'create':
					$css = ('href="../ADM/css/styleTela4.css"');
					include '../ADM/create.php';
					break;
				case 'agendamento':
					$css = ('href="../ADM/css/styleTela2.css"');
					include '../ADM/agendamento.php';
					break;
				case 'noticias':
					$css = ('href="../ADM/css/styleTela3.css"');
					include '../ADM/noticias.php';
					break;
					// case 'update_env':
					// 	include('paginas/discente/update_env.php');
					// 	break;
			}
		} elseif ($nivel == 2) { ?>

			<div class="painelDeEscolha">
				<li><a href="../home/dashboard.php?menuop=home">Regulamento</a></li>
				<li><a href="../home/dashboard.php?menuop=agendamento">Agendamento</a></li>
				<li><a href="../home/dashboard.php?menuop=create">Cadastro</a></li>
				<li><a href="../home/dashboard.php?menuop=noticias">Noticias</a></li>

			</div>

			<?php
			$menuop = (isset($_GET["menuop"])) ? $_GET["menuop"] : "home";
			switch ($menuop) {

				case 'home':
					$css = ('href="../Tutor/css/styleTela1.css"');
					include '../Tutor/regulamento.php';
					break;
				case 'create':
					include '../Tutor/create.php';
					break;
				case 'agendamento':
					$css = ('href="../Tutor/css/styleTela3.css"');
					include '../Tutor/agendamento.php';
					break;
				case 'noticias':
					$css = ('href="../Tutor/css/styleTela4.css"');

					include '../Tutor/noticias.php';
					break;
					// case 'update_env':
					// 	include('paginas/Tutor/update_env.php');
					// 	break;
			}
		} else { ?>
			<div class="painelDeEscolha">
				<li><a href="../home/dashboard.php?menuop=home">Regulamento</a></li>
				<li><a href="../home/dashboard.php?menuop=horario">Horário</a></li>
				<li><a href="../home/dashboard.php?menuop=agendamento">Agendamento</a></li>
				<li><a href="../home/dashboard.php?menuop=noticias">Noticias</a></li>

			</div>
			<!--painelDeEscolha-->
			<?php
			$menuop = (isset($_GET["menuop"])) ? $_GET["menuop"] : "home";
			switch ($menuop) {

				case 'home':
					$css = ('href="../Discente/css/styleTela1.css"');
					include '../Discente/regulamento.php';
					break;
				case 'agendamento':
					$css = ('href="../Discente/css/styleTela2.css"');
					include '../Discente/agendamento.php';
					break;
				case 'horario':
					$css = ('href="../Discente/css/styleTela3.css"');
					include '../Discente/horario.php';
					break;
				case 'noticias':
					$css = ('href="../Discente/css/styleTela4.css"');
					include '../Discente/noticias.php';
					break;
					// case 'update_env':
					// 	include('paginas/discente/update_env.php');
					// 	break;
			}
			?>
		<?php } ?>
		</div>
		<!--notas-->
	</div>
	<!--container-->
</section>