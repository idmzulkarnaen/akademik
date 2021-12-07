<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Biodata extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_crud');
  }


  public function getbio()
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
        $result = array();
        $ruser = $this->Model_crud->ambilData("mhs","*","NPM = '$nim'");
        foreach ($ruser as $row) {
          // ------------- pecah alamat
          $alamat = explode("/",$row->alamat_lengkap);
          if(isset($alamat[0]))$alamat1 = $alamat[0];else $alamat1 = "";
          if(isset($alamat[1]))$rt = $alamat[1];else $rt = "";
          if(isset($alamat[2]))$rw = $alamat[2];else $rw = "";
          if(isset($alamat[3]))$kec = $alamat[3];else $kec = "";
          if(isset($alamat[4]))$kab = $alamat[4];else $kab = "";
          if(isset($alamat[5]))$kab1 = $alamat[5];else $kab1 = "";
          if(isset($alamat[6]))$kodepos = trim(preg_replace('/\s\s+/', '', $alamat[6]));else $kodepos = "";

          // ------------- pecah sd
          $sd = explode("/",$row->SD);
          if(isset($sd[0]))$sd1 = $sd[0];else $sd1 = "";
          if(isset($sd[1]))$kabsd = $sd[1];else $kabsd = "";
          if(isset($sd[3]))$thlulussd = trim(preg_replace('/\s\s+/', '', $sd[3]));else $thlulussd = "";
          // ------------- pecah smp
          $smp = explode("/",$row->SMP);
          if(isset($smp[0]))$smp1 = $smp[0];else $smp1 = "";
          if(isset($smp[1]))$kabsmp = $smp[1];else $kabsmp = "";
          if(isset($smp[3]))$thlulussmp = trim(preg_replace('/\s\s+/', '', $smp[3]));else $thlulussmp = "";
          // ------------- pecah sma
          $sma = explode("/",$row->SMA);
          if(isset($sma[0]))$sma1 = $sma[0];else $sma1 = "";
          if(isset($sma[1]))$kabsma = $sma[1];else $kabsma = "";
          if(isset($sma[3]))$thlulussma = trim(preg_replace('/\s\s+/', '', $sma[3]));else $thlulussma = "";

          array_push($result,array(
            'nim'=>$row->NPM,
            'nama'=>$row->NAMA,
            'nik'=>$row->NIKKTP,
            'tempatLahir'=>$row->TEMLAHIR,
            'tglLahir'=>$row->TGLAHIR,
            'gender'=>$row->JENIS,
            'agama'=>$row->Agama,
            //'statusKawin'=>$row->perkawinan,
            //'jmlAnak'=>$row->anak,
            'email'=>$row->EMAIL,
            'hp'=>$row->telpmhs,
            'alamat'=>$alamat1,
            'rt'=>$rt,
            'rw'=>$rw,
            'kecamatan'=>$kec,
            'kabupaten'=>$kab,
            'kabupaten2'=>$kab1,
            'kodePos'=>$kodepos,
            'SD'=>$sd1,
            'SMP'=>$smp1,
            'SMA'=>$sma1,
            'kabSD'=>$kabsd,
            'kabSMP'=>$kabsmp,
            'kabSMA'=>$kabsma,
            'tahunLulusSD'=>$thlulussd,
            'tahunLulusSMP'=>$thlulussmp,
            'tahunLuluSMA'=>$thlulussma,
            'angkatan'=>$row->THA));
        }

        $response = array(
        'result' => $result,
        'status' => 1);
      }else{
        $response = array(
        'result' => "NIM atau password salah",
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

  public function ubahbio()
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
        $data['NIKKTP'] = $this->input->post("nik");
        $data['TEMLAHIR'] = $this->input->post("temlahir");
        $data['TGLAHIR'] = $this->input->post("tglahir");
        $data['JENIS'] = $this->input->post("gender");
        $data['Agama'] = $this->input->post("agama");
        $data['EMAIL'] = $this->input->post("email");
        $data['telpmhs'] = $this->input->post("hp");
        $data['alamat_lengkap'] = $this->input->post("alamat")."/".$this->input->post("rt")."/".$this->input->post("rw")."/".$this->input->post("kec")."/".$this->input->post("kab")."/".$this->input->post("kab2")."/".$this->input->post("kodepos");
        $data['SD'] = $this->input->post("sd")."/".$this->input->post("kabsd")."/".$this->input->post("provsd")."/".$this->input->post("thlulussd");
        $data['SMP'] = $this->input->post("smp")."/".$this->input->post("kabsmp")."/".$this->input->post("provsmp")."/".$this->input->post("thlulussmp");
        $data['SMA'] = $this->input->post("sma")."/".$this->input->post("kabsma")."/".$this->input->post("provsma")."/".$this->input->post("thlulussma");
        $update = $this->Model_crud->update("mhs",$data,"NPM = '$nim'");
        if($update)$pesan = "Berhasil diperbaharui"; else $pesan = "Gagal diperbaharui";

        $response = array(
        'result' => $pesan,
        'status' => 1);
      }else{
        $response = array(
        'result' => "NIM atau password salah",
        'status' => 0);
      }
    }

    //?nim=14.11.0345&password=&nik=2832397326&temlahir=Banyumas&tglahir=1996-11-10&gender=L&agama=Islam&email=korbanmicin@gmail.com&hp=083734627723&alamat=Lemberang&rt=3&rw=1&kec=sokaraja&kab=1329&kab2=banyumas&sd=MI MAARIF NU 1 Lemberang&kabsd=1308&provsd=29&thlulussd=2007&smp=SMPN 3 Sokaraja&kabsmp=1308&provsmp=29&thlulussmp=2010&sma=SMKN 1 Purbalingga&kabsma=1308&provsma=29&thlulussma=2013
    

    $this->output
      ->set_status_header(200)
      ->set_content_type('application/json', 'utf-8')
      ->set_output(json_encode($response, JSON_PRETTY_PRINT))
      ->_display();
      exit;
  }


  public function ubahpassword()
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
      $pass1 = $this->input->post("password1");
      $ruser = $this->Model_crud->ambilData("akses","*","NPM = '$nim' and PWD = '$pass'");
      if(count($ruser)>0){
        $data['PWD'] = md5($pass1); 
        $update = $this->Model_crud->update("akses",$data,"NPM = '$nim'");       
        if($update){
          $result = array();
          array_push($result,array(
            'pesan'=>"Password berhasil diubah",
            'password'=>$data['PWD']
            ));

          $response = array(
          'result' => $result,
          'status' => 1); 
        }else{
          $response = array(
          'result' => "Password gagal diubah",
          'status' => 0);
        }

      }else{
        $response = array(
        'result' => "Password salah",
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