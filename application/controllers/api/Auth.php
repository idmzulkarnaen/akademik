<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require APPPATH . '/libraries/REST_Controller.php';

class Auth extends REST_Controller  {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
  }


  public function login_post()
  {
    $layanan = "0";
    $ceklayanan = $this->Model_crud->ambilData("tb_modul","*","judul = 'Layanan mobile'");
    foreach ($ceklayanan as $row) {
      $layanan = $row->isi;
    }

    if($layanan != "1"){
      $response = array(
        'result' => "Maaf, layanan mobile sedang tidak tersedia",
        'status' => 0);
    }else{
    	$nim = $this->post("nim");
    	$pass = $this->post("password");
      $ruser = $this->Model_crud->ambilData("akses","*","NPM = '$nim' and PWD = '$pass'");
      if(count($ruser)>0){
        $result = array();
      $ruser = $this->Model_crud->ambilData("akses a join mhs b on a.npm=b.npm","*","a.NPM = '$nim' and a.PWD = '$pass'");
        foreach ($ruser as $row) {
          array_push($result,array('nim'=>$row->NPM,'nama'=>$row->NAMA,'password'=>$row->PWD,'angkatan'=>$row->THA,'semester'=>$row->sem));
        }
        $response = array(
        'result' => $result,
        'status' => 1);
      }else{
        $response = array(
        'result' => "NIM atau password salah ".$nim." ".$pass,
        'status' => 0);
      }
    }
       

    $this->set_response($response, REST_Controller::HTTP_OK);

  }

  

  

}