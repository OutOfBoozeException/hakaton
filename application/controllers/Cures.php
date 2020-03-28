<?php
class Cures extends CI_Controller{
    public function view($diseaseId,$diseaseProb1,$diseaseProb2){
        
        $data['cures']=$this->Data_model->getCuresByDiseaseId($diseaseId);
        $data['diseaseProb1']=$diseaseProb1;
        $data['diseaseProb2']=$diseaseProb2;
        $foundDisease=$this->Data_model->getDiseaseById($diseaseId);
        $data['foundDisease']=$foundDisease;
        if (!$data['cures'])
            show_404();
        $data['disease']=$diseaseId;
        $this->load->view('templates/header');
        $this->load->view('cures/view',$data);
        $this->load->view('templates/footer');
        
    }
}