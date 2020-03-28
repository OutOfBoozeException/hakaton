<?php
class Data_model extends CI_Model{
    public function __construct(){
        $this->load->database();
    }
    
    public function getCuresByDiseaseName($diseaseName){
       $query= $this->db->query("SELECT drug.name, drug.id,disease.nice_name
                           FROM cure
                            LEFT JOIN drug ON cure.drugId=drug.id
                            LEFT JOIN  disease ON disease.id=cure.diseaseId
                            WHERE disease.name='".$diseaseName."'");
        
     
       return $query->result('array');
    }
    
    public function getCuresByDiseaseId($diseaseId){
        $query=$this->db->query("SELECT disease.name from disease where disease.id=$diseaseId");
        $array=$query->result('array');
        $diseaseName=$array[0]['name'];
        
        $result = $this->Data_model->getCuresByDiseaseName($diseaseName);
   
        
        return $result;
    }
    public function getCureById($diseaseId, $drugId) {
        $query= $this->db->query("SELECT cure.instructions FROM cure
                                  WHERE cure.diseaseId=$diseaseId AND cure.drugId=$drugId");
        
        if (!$query->result()){
            show_404();
        }
        return $query->first_row('array');
    }
    
    public function getDiseaseById($diseaseId) {
        $query= $this->db->query("SELECT disease.nice_name FROM disease
                                  WHERE disease.id=$diseaseId");
        
        if (!$query->result()){
            show_404();
        }
        
        return $query->first_row('array');
    }
    
    public function getInstruction($diseaseId, $drugId) {
        $query= $this->db->query("SELECT cure.instructions FROM cure 
                                  WHERE cure.diseaseId=$diseaseId AND cure.drugId=$drugId" );
        
        if (!$query->result()){
            show_404();
        }
        
        return $query->first_row('array');
    }
    
    public function getDrugById($drugId) {
        $query= $this->db->query("SELECT drug.name, drug.producerId, drug.description FROM drug
                                  WHERE drug.id=$drugId");
        
        if (!$query->result()){
            show_404();
        }

        return $query->first_row('array');
    }
    
    public function getProducerById($producerId) {
        $query= $this->db->query("SELECT producer.name FROM producer
                                  WHERE producer.id=$producerId");
        
        if (!$query->result()){
            show_404();
        }
      
        return $query->first_row('array');
    }
    
    public function getUserById($userId) {
        $query= $this->db->query("SELECT users.username, users.password, users.email FROM users
                                  WHERE users.id=$userId");
        
        if (!$query->result()){
            show_404();
        }
        return $query->result->first_row('array');
    }
    
    
    public function getDrugAndProd($drugId){
        $drug=$this->Data_model->getDrugById($drugId);
        $drug['drugId']=$drugId;
        $drug['drugName']=$drug['name'];
        $prod=$this->Data_model->getProducerById($drug['producerId']);
        $merge=array_merge($drug,$prod);
        return $merge;
    }
    
    public function getDiseaseByName($name){
    
    
        $query= $this->db->query("SELECT nice_name,id FROM disease
                                  WHERE name='".$name."'");
        
        if (!$query->result()){
            show_404();
        }
        
        return $query->first_row('array');
    }
    
}