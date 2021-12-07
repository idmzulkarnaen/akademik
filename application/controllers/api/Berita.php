<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Berita extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
    date_default_timezone_set('GMT');
    date_default_timezone_set('Asia/Jakarta');
  }


  public function getberita($offset=0)
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
        $rberita = $this->Model_crud->ambilData("berita order by tanggal desc, jam desc limit $offset, $limit");
        $result = array();
        foreach ($rberita as $row) {
          
          array_push($result,array('idBerita'=>$row->id_berita,
            'judul'=>$row->judul,
            'tanggal'=> tanggal($row->tanggal." ".$row->jam),
            'berita'=>$row->isi_berita,
            'gambar'=>MAIN_URL.'foto_berita/'.$row->gambar));
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
        $rberita = $this->Model_crud->ambilData("berita ","*"," judul like '%$q%' or isi_berita like '%$q%' order by tanggal desc, jam desc limit $offset, $batas");
        $result = array();
        foreach ($rberita as $row) {
          array_push($result,array('idBerita'=>$row->id_berita,
            'judul'=>$row->judul,
            'tanggal'=> tanggal($row->tanggal." ".$row->jam),
            'berita'=>$row->isi_berita,
            'gambar'=>MAIN_URL.'foto_berita/'.$row->gambar));
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