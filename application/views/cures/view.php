<html>
	<body>
		<style type="text/css">
			h1, h4 { margin-top: 2em; }
			li { font-size: 28px; list-style-type: none; }
			h2, li { margin-left: 2em; }
		</style>
		
		<?php
		if (strpos($foundDisease['nice_name'], 'healthy' ) !== false || strpos($foundDisease['nice_name'], 'Healthy' ) !== false ){
		    echo '
				<center><h1>Your plant is healthy </h1></center>
				<center><h3>with probability of '.$diseaseProb1.'.'.$diseaseProb2.'%</h3></center><br/>
			';
		}
		    else {
			echo '
				<center><h1>Your plant got '.$foundDisease['nice_name'].' </h1></center>
				<center><h3>with probability of '.$diseaseProb1.'.'.$diseaseProb2.'%</h3></center><br/>
			';
			echo '<h2>Treatment Preparations:</h2>';
			
			echo "<ul>";
				foreach ($cures as $cure){
					echo '<li><a href="'. base_url().'drugs/'.$cure['id'].'/'.$foundDisease['id'].'">'.  $cure['name']. '</a> </li>';
				}
			echo "</ul>";
		    }
		?>