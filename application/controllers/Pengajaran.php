<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajaran extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('Model_crud');
        $this->load->library(array('Slug'));
        
        date_default_timezone_set('GMT');
	    date_default_timezone_set('Asia/Jakarta');
    }

	function index(){
		$data['result'] = $this->Model_crud->ambilData("kuliahtp a join kuliah b on a.KODE = b.KODE join dosen c on a.NIK = c.NIK order by a.KODE desc");
		$data['konten'] = "v_pengajaran";
		$this->load->view('v_main',$data);
	}

	function tambah(){
		$data['rmakul'] = $this->Model_crud->ambilData("kuliah order by MKL asc");
		$data['rkelas'] = $this->Model_crud->ambilData("kelas order by NAMAKELAS desc");
		$data['rdosen'] = $this->Model_crud->ambilData("dosen order by NAMA asc");
		$data['rjam'] = $this->Model_crud->ambilData("jam order by idJam asc");
		$data['konten'] = "v_pengajarantambah";
		$this->load->view('v_main',$data);
	}

	function prosestambah2(){
		$ruang = $this->input->post('ruang');
		echo $ruang[1]."<br><pre>";
		print_r($_POST);
		echo "</pre>";
	}
	function prosestambah(){
		$ta = '49';
		$kode = $this->input->post('makul');
		$nik = $this->input->post('dosen');
		$kelas = $this->input->post('kelas');
		$jenis = $this->input->post('jenis');


		$hari = $this->input->post('hari');
		$jam = $this->input->post('jam');
		$ruang = $this->input->post('ruang');

		foreach ($kelas as $k) {
			$i = 0;
			foreach ($jenis as $j) {
				$cek = $this->Model_crud->ambilData("kuliahtp","*","TAHUN_AKTIF='$ta' and KODE='$kode' and NIK='$nik' and JENISKULIAH='$j' and KELAS = '$k'");
				$idkuliah="";
				if(count($cek)>0){
					foreach ($cek as $r) {
						$idkuliah = $r->IDKULIAH;
					}
				}else{
					$data['IDKULIAH'] = $this->Model_crud->newId('kuliahtp','IDKULIAH');
					$data['TAHUN_AKTIF'] = $ta;
					$data['KODE'] = $kode;
					$data['KELAS'] = $k;
					$data['NIK'] = $nik;
					$data['TERJADWAL'] = '1';
					$data['JENISKULIAH'] = $j;
					$simpan = $this->Model_crud->simpan("kuliahtp", $data);
					if($simpan)$idkuliah = $data['IDKULIAH'];
				}

				$data1['IDKULIAH'] = $idkuliah;
				$data1['HARI'] = $hari[$i];
				$data1['JAM'] = $jam[$i];
				$data1['RUANG'] = $ruang[$i];

				$simpan = $this->Model_crud->simpan("jadwalperkuliahan", $data1);

				$i++;
			}
		}

		if($simpan){
			
			$this->session->set_flashdata("peringatan","<div class='alert bg-success' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg> Berhasil ditambah <href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('pengajaran');
		}else{
			$this->session->set_flashdata("peringatan","<div class='alert bg-danger' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg>Gagal ditambah <href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('Pengajaran/tambah');
		}
	}

	function edit($id){
		$data['result'] = $this->Model_crud->ambilData("tb_mahasiswa","*","id_mahasiswa = '$id'");
		$data['konten'] = "v_mahasiswaedit";
		$this->load->view('v_main',$data);
	}

	function prosesedit(){
		$id = $this->input->post('id');
		$data['judul_mahasiswa'] = $this->input->post('judul');
		$data['mahasiswa'] = $this->input->post('mahasiswa');
		$data['status'] = $this->input->post('status');
		
		
		$simpan = $this->Model_crud->update("tb_mahasiswa", $data,"id_mahasiswa",$id);

		if($simpan){
			$this->session->set_flashdata("peringatan","<div class='alert bg-success' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg> Tips berhasil disimpan<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('mimin/mahasiswa');
		}else{
			$this->session->set_flashdata("peringatan","<div class='alert bg-danger' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg>  Tips gagal disimpan<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('mimin/mahasiswa/edit/'.$id);
		}
	}

	function proseshapus($id){

		$j = $this->Model_crud->ambilData("kuliah","*","KODE='$id'");
		
		$this->session->set_flashdata("peringatan","<div class='alert alert-success'>Data berhasil dihapus</div>");
		$this->Model_crud->delete("kuliah","KODE","$id");
		redirect("makul");
	}

	function importexcel(){
		$nama_file_baru = 'datamakul.xlsx';
	    if(is_file(APPPATH . "../assets/xls/".$nama_file_baru)) 
	    unlink(APPPATH . "../assets/xls/".$nama_file_baru); 

	    $tipe_file = $_FILES['file']['type']; 
	    $tmp_file = $_FILES['file']['tmp_name'];
	    $idkelas = $this->input->post('kelas');           

	    if($tipe_file == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"){          
	        move_uploaded_file($tmp_file, APPPATH . "../assets/xls/".$nama_file_baru);
	        $this->load->library('PHPExcel');
	        $excelreader = new PHPExcel_Reader_Excel2007();
	        $loadexcel = $excelreader->load(APPPATH . "../assets/xls/".$nama_file_baru); 
	        $sheet = $loadexcel->getActiveSheet()->toArray(null, true, true ,true);

	        $no = 0;
	        //Import uploaded file to Database, Letakan dibawah sini..
	        foreach($sheet as $row){
				$j = $this->Model_crud->cekData("kuliah","where KODE='".$row['A']."'");
	            if($no!=0 && $row['A']!= "" && $j==0){
	            	//if($j>0)$this->Model_crud->delete("kuliah","KODE",$row['A']);
					$data['KODE'] = $row['A'];
					if(isset($row['B']))$data['MKL'] = $row['B'];
					if(isset($row['C']))$data['SKS'] = $row['C'];
					if(isset($row['D']))$data['SEM1'] = $row['D'];
					if(isset($row['E']))$data['SEM2'] = $row['E'];
					if(isset($row['F']))$data['JUR'] = $row['F'];
					if(isset($row['G']))$data['MULAI'] = $row['G'];
					if(isset($row['H']))$data['SAMPAI'] = $row['H'];
					if(isset($row['I']))$data['Ujian'] = $row['I'];
					if(isset($row['J']))$data['Jenis'] = $row['J'];
					if(isset($row['K']))$data['Title'] = $row['K'];
					if(isset($row['L']))$data['KESETARAAN'] = md5($row['L']);
					if(isset($row['M']))$data['SKSP'] = $row['M'];
					if(isset($row['N']))$data['SIFAT_MK'] = $row['N'];
					if(isset($row['O']))$data['SINGKATAN'] = $row['O'];
					if(isset($row['P']))$data['SILABUS'] = $row['P'];
					if(isset($row['Q']))$data['TUJUAN'] = $row['Q'];
					$data['TGL_CREATE'] = date('Y-m-d H:i:s');
					if(isset($row['R']))$data['NAMA_USER'] = $row['R'];
					if(isset($row['S']))$data['TANPA_KELAS'] = $row['S'];
					if(isset($row['T']))$data['KD_JUR'] = $row['T'];
					if(isset($row['U']))$data['aktif'] = $row['U'];
					if(isset($row['V']))$data['id_mkl'] = $row['V'];
					
	                $simpan = $this->Model_crud->simpan("kuliah", $data);

	                
	            }
	            $no++;
	            
	        }

	        $this->session->set_flashdata("peringatan","<div class='alert alert-success'>Data berhasil diimport</div>");
			

		}else{
			$this->session->set_flashdata("peringatan","<div class='alert alert-danger'>Data gagal diimport</div>");
		}

		redirect("makul");
	}
	
}
?>