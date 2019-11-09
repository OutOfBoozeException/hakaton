<?php
class Data_model extends CI_Model{
    public function __construct(){
        $this->load->database();
    }
    
    public function getCures($diseaseName){
        $this->db->query("SELECT drug.name
                           FROM cure
                            LEFT JOIN drug ON cure.drugId=drug.id
                            LEFT JOIN  disease ON disease.id=cure.diseaseId
                            WHERE disease.name=$diseaseName");
        
    
    }
}