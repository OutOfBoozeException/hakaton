<?php
class Cure extends CI_Controller{
    public function view($diseaseName){
        
        $data['cures']=$this->Data_model->getCures($diseaseName);
        $data['disease']=$diseaseName;
        $this->load->view('templates/header');
        $this->load->view('cures/view',$data);
        $this->load->view('templates/footer');
        
    }
}