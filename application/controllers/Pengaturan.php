<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengaturan extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('Model_crud');
    }

	function index(){
		$data['rlayananmobile'] = $this->Model_crud->ambilData("tb_modul","*","judul = 'layanan mobile'");

		$data['konten'] = "v_pengaturan";
		$this->load->view('v_main',$data);
	}

	
	function setlayananmobile(){
		$layanan = $this->Model_crud->ambilData("tb_modul","*","judul = 'layanan mobile'");
		$data['isi'] = $this->input->post('sts');
		$data['tgl_update'] = date('Y-m-d H:i:s');
		if(count($layanan)>0){
			$simpan = $this->Model_crud->update("tb_modul",$data,"judul",'layanan mobile');
		}else{
			$data['judul'] = 'layanan mobile';
			$simpan = $this->Model_crud->simpan("tb_modul",$data);
		}

		redirect('pengaturan');

	}

	
	
}
?>