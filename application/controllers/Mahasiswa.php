<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mahasiswa extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('Model_crud');
        $this->load->library(array('Slug'));
        
        date_default_timezone_set('GMT');
	    date_default_timezone_set('Asia/Jakarta');
    }

	function index(){
		$data['result'] = $this->Model_crud->ambilData("tb_mahasiswa order by id_mahasiswa desc");
		$data['konten'] = "v_mahasiswa";
		$this->load->view('v_main',$data);
	}

	function tambah(){
		$data['konten'] = "v_mahasiswatambah";
		$this->load->view('v_main',$data);
	}

	function prosestambah(){
		$data['id_mahasiswa'] = $this->Model_crud->newId("tb_mahasiswa","id_mahasiswa");
		$data['judul_mahasiswa'] = $this->input->post('judul');
		$data['mahasiswa'] = $this->input->post('mahasiswa');
		$data['status'] = $this->input->post('status');
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

	function importexcel(){
		$nama_file_baru = 'data.xlsx';
	    if(is_file(APPPATH . "../assets/".$nama_file_baru)) 
	    unlink(APPPATH . "../assets/".$nama_file_baru); 

	    $tipe_file = $_FILES['file']['type']; 
	    $tmp_file = $_FILES['file']['tmp_name'];
	    $idkelas = $this->input->post('kelas');           

	    if($tipe_file == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"){          
	        move_uploaded_file($tmp_file, APPPATH . "../assets/".$nama_file_baru);
	        $this->load->library('PHPExcel');
	        $excelreader = new PHPExcel_Reader_Excel2007();
	        $loadexcel = $excelreader->load(APPPATH . "../assets/".$nama_file_baru); 
	        $sheet = $loadexcel->getActiveSheet()->toArray(null, true, true ,true);

	        $no = 0;
	        //Import uploaded file to Database, Letakan dibawah sini..
	        foreach($sheet as $row){
				$j = $this->Model_crud->cekData("tb_mahasiswa","where nim='".$row['B']."'");
	            if($no!=0 && $row['B']!= "" && $j==0){
	            	$data['id_mahasiswa'] = $this->Model_crud->newId("tb_mahasiswa","id_mahasiswa");
					$data['nim'] = $row['B'];
					if(isset($row['C']))$data['nama'] = $row['C'];
					if(isset($row['D']))$data['nik'] = $row['D'];
					if(isset($row['E']))$data['tempat_lahir'] = $row['E'];
					if(isset($row['F']))$data['tgl_lahir'] = converttodate($row['F']);
					if(isset($row['G']))$data['gender'] = $row['G'];
					if(isset($row['H']))$data['agama'] = $row['H'];
					if(isset($row['I']))$data['perkawinan'] = $row['I'];
					if(isset($row['J']))$data['anak'] = $row['J'];
					if(isset($row['K']))$data['email'] = $row['K'];
					if(isset($row['L']))$data['password'] = md5($row['L']);
					if(isset($row['M']))$data['hp'] = $row['M'];
					if(isset($row['N']))$data['alamat'] = $row['N'];
					if(isset($row['O']))$data['rt'] = $row['O'];
					if(isset($row['P']))$data['rw'] = $row['P'];
					if(isset($row['Q']))$data['kecamatan'] = $row['Q'];
					if(isset($row['R']))$data['kabupaten'] = $row['R'];
					if(isset($row['S']))$data['kabupaten2'] = $row['S'];
					if(isset($row['T']))$data['kode_pos'] = $row['T'];
					if(isset($row['U']))$data['sd'] = $row['U'];
					if(isset($row['V']))$data['smp'] = $row['V'];
					if(isset($row['W']))$data['sma'] = $row['W'];
					if(isset($row['X']))$data['kab_sd'] = $row['X'];
					if(isset($row['Y']))$data['kab_smp'] = $row['Y'];
					if(isset($row['Z']))$data['kab_sma'] = $row['Z'];
					if(isset($row['AA']))$data['lulus_sd'] = $row['AA'];
					if(isset($row['AB']))$data['lulus_smp'] = $row['AB'];
					if(isset($row['AC']))$data['lulus_sma'] = $row['AC'];
					if(isset($row['AD']))$data['angkatan'] = $row['AD'];
	                $simpan = $this->Model_crud->simpan("tb_mahasiswa", $data);

	                if($simpan){
	                	$data2['id_mahasiswa'] = $data['id_mahasiswa'];
	                	$this->Model_crud->simpan("tb_orangtua", $data2);
	                }
	            }
	            $no++;
	            
	        }

	        $this->session->set_flashdata("peringatan","<div class='alert alert-success'>Data berhasil diimport</div>");
			

		}else{
			$this->session->set_flashdata("peringatan","<div class='alert alert-danger'>Data gagal diimport</div>");
		}

		redirect("mahasiswa");
	}
	
}
?>