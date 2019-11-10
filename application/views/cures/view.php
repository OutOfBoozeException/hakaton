<?php
echo "<ul>";
//var_dump($cures);
foreach ($cures as $cure){


    echo '<li><a href="'. base_url().'drugs/'.$cure['id'].'">'.  $cure['name'].     '</a></li>';
    //echo '<li>' . $cure['instructions'] . '</li>';
}
echo "</ul>";