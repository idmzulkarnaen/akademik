<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengajuan extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
    date_default_timezone_set('GMT');
    date_default_timezone_set('Asia/Jakarta');
  }


  public function getpengajuanskmk()
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
        $rpengajuan = $this->Model_crud->ambilData("pengajuan","*","npm = '$nim' and jenis_pengajuan='surketmaskul' order by id_pengajuan desc");
        $result = array();
        foreach ($rpengajuan as $row) {
          if($row->tgl!="")$tgl = tanggal($row->tgl);else $tgl = "";
          if($row->tgl_proses!="")$tglproses = tanggal($row->tgl_proses);else $tglproses = "";
          
          array_push($result,array('idPengajuan'=>$row->id_pengajuan,
            'TA'=>$row->thn_ajaran,
            'tanggal'=> $tgl,
            'tanggalDiproses'=> $tglproses,
            'bagian'=>$row->bagian,
            'status'=>$row->status,
            'keperluan'=>$row->keperluan,
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

  public function getpengajuancuti()
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
        $rpengajuan = $this->Model_crud->ambilData("pengajuan","*","npm = '$nim' and jenis_pengajuan='cuti_akademik' order by id_pengajuan desc");
        $result = array();
        foreach ($rpengajuan as $row) {
          if($row->tgl!="")$tgl = tanggal($row->tgl);else $tgl = "";
          if($row->tgl_proses!="")$tglproses = tanggal($row->tgl_proses);else $tglproses = "";
          
          array_push($result,array('idPengajuan'=>$row->id_pengajuan,
            'TA'=>$row->thn_ajaran,
            'tanggal'=> $tgl,
            'tanggalDiproses'=> $tglproses,
            'bagian'=>$row->bagian,
            'status'=>$row->status,
            'keperluan'=>$row->keperluan,
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


  public function addpengajuan()
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
        if(date('m')>=3 && date('m')<=8) $sem = 2;else $sem = 1;
        if(date('m')>8) $thn1 = date('Y');else $thn1 = date('Y')-1;
        $thn2 = $thn1 + 1;

        $data['npm'] = $this->input->post("nim");
        $data['thn_ajaran'] = $thn1."/".$thn2;
        $data['tgl'] = date('Y-m-d');
        $data['bagian'] = "BAAK";
        $data['status'] = "Diajukan";
        $data['keperluan'] = $this->input->post("keperluan");
        $data['jenis_pengajuan'] = $this->input->post("jenis");
        $data['semester'] = $sem;
        $simpan = $this->Model_crud->simpan("pengajuan",$data);
        if($simpan){
          
          $response = array(
          'result' => "Pengajuan berhasil",
          'status' => 1); 
        }else{
          $response = array(
          'result' => "Pengajuan gagal",
          'status' => 0);
        }

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