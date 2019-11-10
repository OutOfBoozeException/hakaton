<html>
	<body>
		<style type="text/css">
			h1 { margin-top: 2em; }
			li { font-size: 28px; list-style-type: none; }
			h3 { margin-left: 2em; }
			p, h4 { margin: 2em 4em; text-align: justify;}
		</style>

		<?php 

			echo "
				<center><h1>" . $drugAndProd['drugName'] . "</h1></center><br/><br/>" . "
				<h3>Manufactured by " . $drugAndProd['name'] . "</h3><br/><br/>" . "
				<h4>Description</h4><p>" . $drugAndProd['description'] . "</p><br><br>" . "
				<h4>Instruction</h4><p>" . $instructions['instructions'] . "</p>
			";

		?>