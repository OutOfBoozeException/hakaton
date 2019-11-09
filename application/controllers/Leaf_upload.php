<?php
class Leaf_upload extends CI_Controller{
    
    public function view(){
        
        
        $this->load->view('templates/header');
        $this->load->view('leafUpload');
        $this->load->view('templates/header');
    }
    
  
}