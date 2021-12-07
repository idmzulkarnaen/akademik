<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Jadwal extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
    date_default_timezone_set('GMT');
    date_default_timezone_set('Asia/Jakarta');
  }


  public function getjadwalkuliah()
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
        $ta1 = "";
        $sem = "";
        $rta = $this->Model_crud->ambilData("krs","THN_AJARAN, SEMESTER"," NPM='$nim' order by THN_AJARAN desc, SEMESTER desc limit 1 ");
        foreach ($rta as $row) {
            $ta1 = $row->THN_AJARAN;
            $sem = $row->SEMESTER;
        }

        $rjadwal = $this->Model_crud->ambilData(" krs a JOIN kuliah b on a.KODE = b.KODE join kuliahtp c on a.KELAS = c.IDKULIAH join jadwalperkuliahan d on c.IDKULIAH = d.IDKULIAH join jam e on d.JAM = e.idJam","*","a.NPM = '$nim' and a.THN_AJARAN = '$ta1' and a.SEMESTER = '$sem'");
        $result = array();
        foreach ($rjadwal as $row) {
          
          array_push($result,array(
            'makul'=>$row->MKL,
            'makulsingkat'=>$row->SINGKATAN,
            'hari'=> $row->HARI,
            'jam1'=> $row->jam1,
            'jam2'=> $row->jam2,
            'ruang'=>$row->RUANG
            ));
        }

        $response = array(
        'result' => $result,
        'link' => base_url('api/jadwal/cetakjadwalkuliah?nim='.$nim.'&id='.$pass),
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

  public function getjadwalcuti()
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
        $rjadwal = $this->Model_crud->ambilData("jadwal","*","npm = '$nim' and jenis_jadwal='cuti_akademik' order by id_jadwal desc");
        $result = array();
        foreach ($rjadwal as $row) {
          if($row->tgl!="")$tgl = tanggal($row->tgl);else $tgl = "";
          if($row->tgl_proses!="")$tglproses = tanggal($row->tgl_proses);else $tglproses = "";
          
          array_push($result,array('idJadwal'=>$row->id_jadwal,
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


  public function addjadwal()
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
        if(date('m')>=3 && date('m')<=8) $sem = 2;else $sem = 1;
        if(date('m')>8) $thn1 = date('Y');else $thn1 = date('Y')-1;
        $thn2 = $thn1 + 1;

        $data['npm'] = $this->input->get("nim");
        $data['thn_ajaran'] = $thn1."/".$thn2;
        $data['tgl'] = date('Y-m-d');
        $data['bagian'] = "BAAK";
        $data['status'] = "Diajukan";
        $data['keperluan'] = $this->input->get("keperluan");
        $data['jenis_jadwal'] = $this->input->get("jenis");
        $data['semester'] = $sem;
        $simpan = $this->Model_crud->simpan("jadwal",$data);
        if($simpan){
          
          $response = array(
          'result' => "Jadwal berhasil",
          'status' => 1); 
        }else{
          $response = array(
          'result' => "Jadwal gagal",
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