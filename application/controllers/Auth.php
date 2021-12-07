<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
	function __construct()
    {
        parent::__construct();
        $this->load->model('Model_crud');
        
        date_default_timezone_set('GMT');
	    date_default_timezone_set('Asia/Jakarta');
    }

	function index(){
		$this->load->view('v_login');
	}

	function loginproses(){

			$pwd = md5($this->input->post('password'));
			$user=$this->input->post('username');

			$cek = $this->Model_crud->ambilData("tb_admin","*"," username='".$user."'");
			
	        if(count($cek) == 0) {
				$this->session->set_flashdata("peringatan","<div class='alert bg-danger' role='alert'>
					<svg class='glyph stroked cancel'><use xlink:href='#stroked-cancel'/></svg> Username tidak terdaftar<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
				redirect("auth");
	        } else {
	        	foreach ($cek as $row) {
	        		$pass = $row->password;
	        		$user = $row->username;
	        		$idadmin = $row->id_admin;
	        		$nama = $row->nama_admin;
	        	}


	            if($pwd!=$pass) {
	            	$this->session->set_flashdata("peringatan","<div class='alert bg-danger' role='alert'>
					<svg class='glyph stroked cancel'><use xlink:href='#stroked-cancel'/></svg> Password yang anda masukan salah<a href='#' class='pull-right' class='close' data-dismiss='alert' aria-label='Close'><span class='glyphicon glyphicon-remove'></span></a>
				</div>");
	            	redirect("auth");
	            } else {
	                #buat sesi nrp
					$arsesi = array(
						'idadmin' => $idadmin,
						'username' => $user,
						'namaadmin' => $nama,
						'upload_image_file_manager' => TRUE
					);
					$this->session->set_userdata($arsesi);
					redirect("main");
	            }
	        }
		}


	

	

	function logout(){
		$arsesi = array(
						'idadmin',
						'namaadmin',
						'username',
						'upload_image_file_manager'
					);
		$this->session->unset_userdata($arsesi);
		redirect('auth', 'refresh');
	}

}
?>