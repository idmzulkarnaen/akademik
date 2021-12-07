<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengumuman extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
    date_default_timezone_set('GMT');
    date_default_timezone_set('Asia/Jakarta');
  }


  public function getpengumuman($offset=0)
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

      $nim = $this->input->post("nim");
      $pass = $this->input->post("password");
      $ruser = $this->Model_crud->ambilData("akses","*","NPM = '$nim' and PWD = '$pass'");
      if(count($ruser)>0){

        $limit = 10;
        $offset = $offset * $limit;
        $rpengumuman = $this->Model_crud->ambilData("pengumuman order by tanggal_info desc, jam desc limit $offset, $limit");
        $result = array();
        foreach ($rpengumuman as $row) {
          //-------------- download -------------------
          
          $download = array();
          if($row->link!=""){
            $rdownload = explode("/",$row->link);
            foreach ($rdownload as $r) {
              array_push($download,array(
                'file'=>$r,
                'url'=> MAIN_URL.'download/file/doc/'.$r));
            }
          }
          //-------------------------------------------
          array_push($result,array('idPengumuman'=>$row->id_info,
            'judul'=>$row->judul_info,
            'tanggal'=> tanggal($row->tanggal_info." ".$row->jam),
            'admin'=>$row->username,
            'pengumuman'=>$row->isi_info,
            'download'=>$download));
        }

        $response = array(
        'result' => $result,
        'status' => 1);
      }else{
        $response = array(
        'result' => "Authentifikasi gagal",
        'status' => 0);
      }
    }
    

    $this->output
      ->set_status_header(200)
      ->set_content_type('application/json', 'utf-8')
      ->set_output(json_encode($response, JSON_PRETTY_PRINT))
      ->_display();
      exit;
  }

  public function search($offset=0)
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

      $q = $this->input->post("q");
      $batas = 10;
        $offset = $offset * $batas;
        $rpengumuman = $this->Model_crud->ambilData("pengumuman ","*"," judul_info like '%$q%' or isi_info like '%$q%' order by tanggal_info desc, jam desc limit $offset, $batas");
        $result = array();
        foreach ($rpengumuman as $row) {
          ///-------------- download -------------------
          
          $download = array();
          if($row->link!=""){
            $rdownload = explode("/",$row->link);
            foreach ($rdownload as $r) {
              array_push($download,array(
                'file'=>$r,
                'url'=> MAIN_URL.'download/file/doc/'.$r));
            }
          }
          //-------------------------------------------
          array_push($result,array('idPengumuman'=>$row->id_info,
            'judul'=>$row->judul_info,
            'tanggal'=> tanggal($row->tanggal_info." ".$row->jam),
            'admin'=>$row->username,
            'pengumuman'=>$row->isi_info,
            'download'=>$download));
        }

        $response = array(
        'result' => $result,
        'status' => 1);
    }
    

    $this->output
      ->set_status_header(200)
      ->set_content_type('application/json', 'utf-8')
      ->set_output(json_encode($response, JSON_PRETTY_PRINT))
      ->_display();
      exit;
  }

  
}