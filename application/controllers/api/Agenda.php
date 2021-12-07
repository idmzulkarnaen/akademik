<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Agenda extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
    date_default_timezone_set('GMT');
    date_default_timezone_set('Asia/Jakarta');
  }


  public function getagenda()
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
        $ragenda = $this->Model_crud->ambilData("agenda_akademik order by idagenda_akademik desc");
        $result = array();
        foreach ($ragenda as $row) {
          
          array_push($result,array('idAgenda'=>$row->idagenda_akademik,
            'bagian'=>$row->bagian,
            'tanggalMulai'=> tanggal($row->tanggal_mulai),
            'tanggalSelesai'=> tanggal($row->tanggal_selesai),
            'agenda'=>$row->keterangan,
            'semester'=>$row->semester
            ));
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

  

  
}