<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);

require_once('../../app/controller/Noticia.php');

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
    
<?php
	$Noticia = new Noticia;
	if(isset($_POST['Adicionar'])){

        $descricao = $_POST['descricao'];

		$Noticia->setDescricao($descricao);
		
		if($Noticia->insert()){
			echo "Noticia ". $descricao. " inserido com sucesso";
		}
    }
	if(isset($_POST['Remover'])){
		$idNoticia = $_POST['idNoticia'];

		$Noticia->setIdNoticia($idNoticia);
		
		if($Noticia->delete()){
			echo "Noticia ". $idNoticia. " excluido com sucesso";
		}
	}
	if(isset($_POST['Salvar'])){
		$descricao = $_POST['descricao'];
		$idNoticia = $_POST['idNoticia'];

		$Noticia->setIdNoticia($idNoticia);
		$Noticia->setDescricao($descricao);
		
		if($Noticia->update()){
			echo "Noticia ". $descricao. " atualizado com sucesso";
		}
	}
    ?>

    <section>
        <div class="container">
            <div class="notas">
                <h1>Notícias</h1>
                <?php
                $Noticias = $Noticia->findAll();
                foreach ($Noticias as $key => $value) {?>
                    <p><?php echo "Noticia ".$value->idNoticia." : ".$value->descricao;?></p>
                <?php
                }
                ?>
            </div>
            <!--notas-->
        </div>
        <!--container-->
    </section>

	<section>
		<div class="container">
			<div class="editar-nota">
				<h1>Editar as notícia:</h1>
				<div class="adicionar-nota">
					<h2>Adicionar:</h2>
                    <form action="" method="POST">
					<div class="texto-add-nota">
						<textarea name="descricao"></textarea>
						<div class="tad-btt">
							<input type="submit" name="Adicionar" value="Adicionar">
						</div>
					</div><!--texto-add-nota-->
					</form>
				</div><!--adicionar-nota-->

				<div class="apagar-edd">
					<form action="" method="POST">
					<div class="apagar1">
						<h2>Apagar ou editar:</h1>
						<p>Selecione a notícia:</p>
						<select name="idNoticia" id="idNoticia">
							<?php
							$Noticias = $Noticia->findAll();
							foreach ($Noticias as $key => $value) {?>
								<option><?php echo $value->idNoticia;?></option>
							<?php
							}?>
						</select>
					</div><!--apagar1-->
					<div class="apagar2">
						<textarea name="descricao"></textarea>
						<div class="apagar3">
						<input type="submit" name="Remover" value="Remover">
						<input type="submit" name="Salvar" value="Salvar">
					</div>
					</div><!--apagar2-->
					</form>
				</div><!--apagar-edd-->
				
			</div><!--editar-nota-->
		</div><!--container-->
	</section>


</body>

</html>