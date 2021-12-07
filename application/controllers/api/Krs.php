<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Krs extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
    date_default_timezone_set('GMT');
    date_default_timezone_set('Asia/Jakarta');
  }

  public function makulditawarkan()
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
        $kdjurusan = "";
        $tha = "";
        $sem = "";
        $ruser = $this->Model_crud->ambilData("mhs","*","NPM = '$nim' ");
        foreach ($ruser as $row) {
          $kdjurusan = $row->KD_JUR;
          $tha = $row->THA;
          $sem = $row->sem+1;
        }
        if(date('m')>=2 && date('m')<8){
          $rpengajuan = $this->Model_crud->ambilData("kuliah","*","SEM1 <= '$sem' and SEM1%2=0 and KD_JUR='$kdjurusan' and aktif='1' order by SEM1 desc, KODE asc");
        }else{
          $rpengajuan = $this->Model_crud->ambilData("kuliah","*","SEM1 <= '$sem' and KD_JUR='$kdjurusan' and SEM1%2=1 and aktif='1' order by SEM1 desc, KODE asc");
        }
        $result = array();
        $subresult = array();
        $sem = "";
        $no = 0;
        foreach ($rpengajuan as $row) {
          $no++;
          if($sem=="")$sem = $row->SEM1;
          
          if($sem!=$row->SEM1){
            array_push($result,array(
              'semester'=> $sem,
              'subresult'=> $subresult
              ));

            $subresult = array();
            array_push($subresult,array('kode'=>$row->KODE,
              'makul'=>$row->MKL,
              'semester'=> $row->SEM1,
              'sks'=> $row->SKS
              ));

            $sem = $row->SEM1;
          }else{
            array_push($subresult,array('kode'=>$row->KODE,
            'makul'=>$row->MKL,
              'semester'=> $row->SEM1,
            'sks'=> $row->SKS
            ));
          }


          if($no==count($rpengajuan)){
            array_push($result,array(
              'semester'=> $sem,
              'subresult'=> $subresult
              ));
          }

          
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

  public function getpengajuan()
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
        if(date('m')>=3 && date('m')<=8){
          $ta1 = date('Y')-1;
          $ta2 = date('Y');
        }else{
          $ta1 = date('Y');
          $ta2 = date('Y')+1;
        }

        $sem = "";
        $ruser = $this->Model_crud->ambilData("mhs","*","NPM = '$nim' ");
        foreach ($ruser as $row) {
          $sem = $row->sem+1;
        }

        $rpengajuan = $this->Model_crud->ambilData("krs_sementara a join kuliah b on a.KODE = b.KODE","*","a.NPM = '$nim' and a.THN_AJARAN='".$ta1."/".$ta2."' and a.SEMESTER='$sem' order by a.KODE asc");

        $result = array();
        foreach ($rpengajuan as $row) {
          
          array_push($result,array('id'=>$row->ID_KRS,
            'kode'=>$row->KODE,
            'makul'=>$row->MKL,
            'sks'=> $row->SKS,
            'diambil'=>$row->DIAMBIL
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

        if(date('m')>=3 && date('m')<=8){
          $ta1 = date('Y')-1;
          $ta2 = date('Y');
        }else{
          $ta1 = date('Y');
          $ta2 = date('Y')+1;
        }

        $sem = "";
        $ruser = $this->Model_crud->ambilData("mhs","*","NPM = '$nim' ");
        foreach ($ruser as $row) {
          $sem = $row->sem+1;
        }

        $makul = json_decode($this->input->post("makul"));
        
        foreach ($makul as $kode) {
        
          $rcek = $this->Model_crud->ambilData("krs_sementara","*","NPM = '$nim' and THN_AJARAN='".$ta1."/".$ta2."' and KODE='$kode->kode' and SEMESTER='$sem'");
          if(count($rcek)>0){
            foreach ($rcek as $r) {
              $this->Model_crud->delete("krs_sementara","ID_KRS",$r->ID_KRS);
            }
          }

          $data['NPM'] = $nim;
          $data['THN_AJARAN'] = $ta1."/".$ta2;
          $data['KODE'] = $kode->kode;
          $data['SEMESTER'] = $sem;
          $data['BOLEH'] = 0;
          $data['DIAMBIL'] = 0;
          $data['AKTIVASI'] = 0;
          $data['ISI_KRS'] = 0;
          $simpan = $this->Model_crud->simpan("krs_sementara",$data);
        }
        if($simpan){
          
          $response = array(
          'result' => "Pengajuan KRS berhasil",
          'status' => 1); 
        }else{
          $response = array(
          'result' => "Pengajuan KRS gagal",
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

  public function hapuspengajuan()
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
        $id = $this->input->post("id");
        

        $cek = $this->Model_crud->cekData("krs_sementara "," where NPM = '$nim' and ID_KRS='$id' ");
        if($cek>0){
          $delete = $this->Model_crud->delete("krs_sementara","ID_KRS",$id);
          if($delete){
            $result = "Berhasil dihapus";
            $status = 1;
          }else {
            $result = "Gagal dihapus";
            $status = 0;
          }
        }else {
          $result = "Gagal dihapus";
            $status = 0;
        }

        
        $response = array(
        'result' => $result,
        'status' => $status);
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

  public function getisikrs()
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
        if(date('m')>=3 && date('m')<=8){
          $ta1 = date('Y');
          $ta2 = date('Y')+1;
        }else{
          $ta1 = date('Y')-1;
          $ta2 = date('Y');
        }

        $sem = "";
        $ruser = $this->Model_crud->ambilData("mhs","*","NPM = '$nim' ");
        foreach ($ruser as $row) {
          $sem = $row->sem+1;
        }

        $rpengajuan = $this->Model_crud->ambilData("krs_sementara a join kuliahtp b on a.KODE = b.KODE join kelas c on b.KELAS = c.KELAS","DISTINCT b.KELAS","a.NPM = '$nim' and a.THN_AJARAN='".$ta1."/".$ta2."' and a.SEMESTER='$sem' and a.BOLEH='1' order by c.NAMAKELAS asc");

        $result = array();
        foreach ($rpengajuan as $row) {
          $krs = array();
          $kelas = "";

          $rkrs = $this->Model_crud->ambilData("krs_sementara a join kuliahtp b on a.KODE = b.KODE join kelas c on b.KELAS = c.KELAS join kuliah d on a.KODE = d.KODE join dosen e on b.NIK = e.NIK join jadwalperkuliahan f on b.IDKULIAH = f.IDKULIAH join jam g on f.JAM = g.idJam","*","a.NPM = '$nim' and a.THN_AJARAN='".$ta1."/".$ta2."' and a.SEMESTER='$sem' and a.BOLEH='1' order by a.KODE asc");

          foreach ($rkrs as $r) {
            $kelas = $r->NAMAKELAS;
             array_push($krs,array(
              'idKuliah' => $r->IDKULIAH,
              'kode'=>$r->KODE,
              'makul'=>$r->MKL,
              'sks'=> $r->SKS,
              'dosen'=>$r->NAMA,
              'jenis'=>$r->JENISKULIAH,
              'makulsingkat'=>$r->SINGKATAN,
              'hari'=> $r->HARI,
              'jam1'=> $r->jam1,
              'jam2'=> $r->jam2
              ));
             } 

          array_push($result,array(
            'idKelas'=>$row->KELAS,
            'kelas'=>$kelas,
            'KRS'=> $krs
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
  

  


  public function addpengajuan2()
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