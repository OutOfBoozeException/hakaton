<?php
class Drugs extends CI_Controller{
    public function view($drugId){
       $data['drugAndProd']= $this->Data_model->getDrugAndProd($drugId);
       if (!$data['drugAndProd'])
           show_404();
          // $data['disease']=$disease;
           $this->load->view('templates/header');
           $this->load->view('drugs/view',$data);
           $this->load->view('templates/footer');
    }
}