<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('Model_crud');
    }

	function index(){
		$data['konten'] = "v_dashboard";
		$this->load->view('v_main',$data);
	}

	

	function error404(){
		$data['konten'] = "v_error";
		$this->load->view('v_main',$data);
	}


}
?>