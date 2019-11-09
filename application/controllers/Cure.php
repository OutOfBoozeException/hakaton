<?php
class Cure extends CI_Controller{
    public function view($diseaseName){
        
        $data['cures']=$this->Data_model->getCures($diseaseName);
        if (!$data['cures'])
            show_404();
        $data['disease']=$diseaseName;
        $this->load->view('templates/header');
        $this->load->view('pages/view',$data);
        $this->load->view('templates/footer');
        
    }
}