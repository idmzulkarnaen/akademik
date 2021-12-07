<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Makul extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('Model_crud');
        $this->load->library(array('Slug'));
        
        date_default_timezone_set('GMT');
	    date_default_timezone_set('Asia/Jakarta');
    }

	function index(){
		$data['result'] = $this->Model_crud->ambilData("kuliah order by KODE desc");
		$data['konten'] = "v_makul";
		$this->load->view('v_main',$data);
	}

	function tambah(){
		$data['konten'] = "v_makultambah";
		$this->load->view('v_main',$data);
	}

	function prosestambah(){
		$data['KODE'] = $this->input->post('judul');
		$data['MKL'] = $this->input->post('mahasiswa');
		$data['SKS'] = $this->input->post('status');
		$data['tgl_mahasiswa'] = date('Y-m-d H:i:s');
		$data['slug'] = $this->slug->create_unique_slug($data['judul_mahasiswa'], 'tb_mahasiswa');
		$simpan = $this->Model_crud->simpan("tb_mahasiswa", $data);
		if($simpan){
			
			$this->session->set_flashdata("peringatan","<div class='alert bg-success' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg> Tips berhasil disimpan<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('mimin/mahasiswa');
		}else{
			$this->session->set_flashdata("peringatan","<div class='alert bg-danger' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg>Tips gagal disimpan<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('mimin/mahasiswa/tambah');
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