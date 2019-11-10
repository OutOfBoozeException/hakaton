<?php
echo "<ul>";
//var_dump($cures);
echo '<h1> Your plant got '.$foundDisease['nice_name'].' with probability of '.$diseaseProb1.'.'.$diseaseProb2.'%</h1>';
foreach ($cures as $cure){

  
    echo '<li><a href="'. base_url().'drugs/'.$cure['id'].'/'.$foundDisease['id'].'">'.  $cure['name'].     '</a> ></li>';
    //echo '<li>' . $cure['instructions'] . '</li>';
}
echo "</ul>";