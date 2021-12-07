<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Nilai extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
    date_default_timezone_set('GMT');
    date_default_timezone_set('Asia/Jakarta');
  }


  public function gettranskipnilai()
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

      $nim = $this->input->get("nim");
      $pass = $this->input->get("password");
      $ruser = $this->Model_crud->ambilData("akses","*","NPM = '$nim' and PWD = '$pass'");
      if(count($ruser)>0){
        $rnilai = $this->Model_crud->ambilData("nilai_mhs a join kuliah b on a.KODE=b.KODE","a.NPM, a.KODE, b.MKL, b.SKS, a.NILAI"," a.NPM='$nim' order by a.KODE asc ");
        $result = array();
        foreach ($rnilai as $row) {          
          array_push($result,array('kode'=>$row->KODE,
            'makul'=>$row->MKL,
            'sks'=> $row->SKS,
            'nilai'=> $row->NILAI
            ));
        }

        $response = array(
        'result' => $result,
        'link' => base_url('api/nilai/cetaktranskrip?nim='.$nim.'&id='.$pass),
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

  public function cetaktranskrip()
  {
    $nim = $this->input->get("nim");
    $pass = $this->input->get("id");
    $ruser = $this->Model_crud->ambilData("akses","*","NPM = '$nim' and PWD = '$pass'");
      
    if(count($ruser)>0){
      $data['rnilai'] = $this->Model_crud->ambilData("nilai_mhs a join kuliah b on a.KODE=b.KODE","a.NPM, a.KODE, b.MKL, b.SKS, a.NILAI"," a.NPM='$nim' order by a.KODE asc ");
      $this->load->view("cetak/transkripnilai.php",$data);
        
    }else{
      echo  "Authentifikasi gagal";
    }

  }

  public function getkhs()
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

      $nim = $this->input->get("nim");
      $pass = $this->input->get("password");
      $ruser = $this->Model_crud->ambilData("akses","*","NPM = '$nim' and PWD = '$pass'");
      if(count($ruser)>0){
        $rta = $this->Model_crud->ambilData("krs","distinct THN_AJARAN"," NPM='$nim' order by THN_AJARAN desc ");
        $ta = array();
        $ta1 = "";
        $sem = "";

        foreach ($rta as $row) {          
          array_push($ta,array("TA"=>$row->THN_AJARAN));
        }

        $rta = $this->Model_crud->ambilData("krs","THN_AJARAN, SEMESTER"," NPM='$nim' order by THN_AJARAN desc, SEMESTER desc limit 1 ");
        foreach ($rta as $row) {
            $ta1 = $row->THN_AJARAN;
            $sem = $row->SEMESTER;
        }

        $rnilai = $this->Model_crud->ambilData("krs a join kuliah b on a.KODE=b.KODE","a.NPM, a.KODE, b.MKL, b.SKS, a.NILAI, a.AMBILKE"," a.NPM='$nim' and a.THN_AJARAN = '$ta1' and a.SEMESTER = '$sem' order by a.KODE asc ");
        $nilai = array();
        foreach ($rnilai as $row) {          
          array_push($nilai ,array('kode'=>$row->KODE,
            'makul'=>$row->MKL,
            'sks'=> $row->SKS,
            'nilai'=> $row->NILAI,
            'ambilke'=> $row->AMBILKE
            ));
        }

        $result = array('tahunAjaran'=>$ta, 'nilai'=>$nilai);

        $thn = explode("/",$ta1);


        $response = array(
        'result' => $result,
        'link' => base_url('api/nilai/cetaktranskrip?nim='.$nim.'&id='.$pass.'&th='.$thn[0].'&sm='.$sem),
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

  public function carikhs()
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

      $nim = $this->input->get("nim");
      $pass = $this->input->get("password");
      $ta = $this->input->get("ta");
      $smt = $this->input->get("smt");
      $ruser = $this->Model_crud->ambilData("akses","*","NPM = '$nim' and PWD = '$pass'");
      if(count($ruser)>0){
        
        $rnilai = $this->Model_crud->ambilData("krs a join kuliah b on a.KODE=b.KODE","a.NPM, a.KODE, b.MKL, b.SKS, a.NILAI, a.AMBILKE"," a.NPM='$nim' and a.THN_AJARAN = '$ta' and a.SEMESTER = '$smt' order by a.KODE asc ");
        $result = array();
        foreach ($rnilai as $row) {          
          array_push($result ,array('kode'=>$row->KODE,
            'makul'=>$row->MKL,
            'sks'=> $row->SKS,
            'nilai'=> $row->NILAI,
            'ambilke'=> $row->AMBILKE
            ));
        }


        $thn = explode("/",$ta);


        $response = array(
        'result' => $result,
        'link' => base_url('api/nilai/cetaktranskrip?nim='.$nim.'&id='.$pass.'&th='.$thn[0].'&sm='.$smt),
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