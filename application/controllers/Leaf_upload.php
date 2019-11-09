


<?php
class Leaf_upload extends CI_Controller{
    
    public function view(){
        
        
        $this->load->view('templates/header');
        $this->load->view('leafUpload');
        $this->load->view('templates/footer');
    }
   // public function uploadPhoto(){
     //   $config['upload_path']          = '../../uploads/';
    //    $config['allowed_types']        = 'gif|jpg|png';
    //    $config['max_size']             = 100;
   //     $config['max_width']            = 1024;
//$config['max_height']           = 768;
   //     $this->session->currentPics++;
   //     $config['file_name']            = 'subject'.$this->session->username.$this->session->currentPics;
   //     $this->load->library('upload', $config);
  //      return $config;
   //}
    public function predict_Disease(){
       
        $file=$this->input->post('file');
     
     //   $config['upload_path']          = '../../uploads/';
     //   $config['allowed_types']        = 'gif|jpg|png';
    //    $config['max_size']             = 10000;
    //    $config['max_width']            = 102004;
    //    $config['max_height']           = 7680000;
    //    $this->session->currentPics++;
   //     $config['file_name']            = "".$this->session->username.$this->session->currentPics;
    //    var_dump($config);
     //   exit();
    //    $this->load->library('upload', $config);
       //var_dump('gotov upload');
        //$config=uploadPhoto();
        // dodati da se iz slike izvuce bolest i kad se vrati vrednost
        //sacuvati je u $var
        $var="Apple_Scab";// ovo izmeniti kad se resi model
        //$this->load->view('cures/view/'.$var);
    }
    
 
    
  
}