<?php
class Cures extends CI_Controller{
    public function view($diseaseName,$diseaseProb1,$diseaseProb2){
        
        $data['cures']=$this->Data_model->getCures($diseaseName);
        
        $data['diseaseProb1']=$diseaseProb1;
        $data['diseaseProb2']=$diseaseProb2;
        $foundDisease=$this->Data_model->getDiseaseByName($diseaseName);
        $data['foundDisease']=$foundDisease;
        if (!$data['cures'])
            show_404();
        $data['disease']=$diseaseName;
        $this->load->view('templates/header');
        $this->load->view('cures/view',$data);
        $this->load->view('templates/footer');
        
    }
}