<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengumuman extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('Model_crud');
        $this->load->library(array('Slug'));
        
        date_default_timezone_set('GMT');
	    date_default_timezone_set('Asia/Jakarta');
    }

	function index(){
		$data['id_admin'] = $this->session->userdata('id_admin');
		$data['result'] = $this->Model_crud->ambilData("tb_pengumuman a join tb_admin b on a.id_admin = b.id_admin order by a.tgl_pengumuman desc");
		$data['konten'] = "v_pengumuman";
		$this->load->view('v_main',$data);
	}

	function tambah(){
		$data['id_admin'] = $this->session->userdata('id_admin');
		$data['konten'] = "v_pengumumantambah";
		$this->load->view('v_main',$data);
	}

	function prosestambah(){
		$data['id_pengumuman'] = $this->Model_crud->newId("tb_pengumuman","id_pengumuman");
		$data['id_admin'] = $this->session->userdata("idadmin");
		$data['judul_pengumuman'] = $this->input->post('judul');
		$data['pengumuman'] = $this->input->post('pengumuman');
		$data['tgl_pengumuman'] = date('Y-m-d H:i:s');
		$simpan = $this->Model_crud->simpan("tb_pengumuman", $data);
		if($simpan){
			$data1['id_pengumuman'] = $data['id_pengumuman'];

			if($_FILES['file1']['tmp_name']!=""){
				$data1['file'] = $this->Model_crud->uploadFile('file1','download/file');
				$simpan = $this->Model_crud->simpan("tb_pengumuman_download", $data1);
			}

			if($_FILES['file2']['tmp_name']!=""){
				$data1['file'] = $this->Model_crud->uploadFile('file2','download/file');
				$simpan = $this->Model_crud->simpan("tb_pengumuman_download", $data1);
			}

			if($_FILES['file3']['tmp_name']!=""){
				$data1['file'] = $this->Model_crud->uploadFile('file3','download/file');
				$simpan = $this->Model_crud->simpan("tb_pengumuman_download", $data1);
			}
		 
			$this->session->set_flashdata("peringatan","<div class='alert bg-success' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg> Pengumuman berhasil disimpan<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('pengumuman');
		}else{
			$this->session->set_flashdata("peringatan","<div class='alert bg-danger' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg>Pengumuman gagal ditambah<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('pengumuman/tambah');
		}
	}

	function edit($id){
		$data['id_admin'] = $this->session->userdata('id_admin');
		$data['result'] = $this->Model_crud->ambilData("tb_pengumuman","*","id_pengumuman = '$id'");
		$data['konten'] = "v_pengumumanedit";
		$this->load->view('v_main',$data);
	}

	function prosesedit(){
		$id = $this->input->post('id');
		$data['judul_pengumuman'] = $this->input->post('judul');
		$data['pengumuman'] = $this->input->post('pengumuman');
		
		
		$simpan = $this->Model_crud->update("tb_pengumuman", $data,"id_pengumuman",$id);

		if($simpan){
			$this->session->set_flashdata("peringatan","<div class='alert bg-success' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg> Pengumuman berhasil disimpan<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('pengumuman');
		}else{
			$this->session->set_flashdata("peringatan","<div class='alert bg-danger' role='alert'>
					<svg class='glyph stroked checkmark'><use xlink:href='#stroked-checkmark'></use></svg>Pengumuman gagal disimpan<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
			redirect('pengumuman/edit/'.$id);
		}
	}

	function proseshapus($id){
		$this->session->set_flashdata("peringatan","<div class='alert alert-success'>Data berhasil dihapus</div>");
		$this->Model_crud->delete("tb_pengumuman","id_pengumuman","$id");
		redirect("pengumuman");
	}

	
	
}
?>