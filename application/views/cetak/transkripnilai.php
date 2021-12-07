<?php

	//error_reporting(E_STRICT);
$data = "";
$no=1;
$jsks = 0;
$jmutu = 0;

foreach ($rnilai as $row) {
	$bobot = 0;
	if($row->NILAI=="A") $bobot =4;
	else if($row->NILAI=="B") $bobot =3;
	else if($row->NILAI=="C") $bobot =2;
	else if($row->NILAI=="D") $bobot =1;

	$mutu = $bobot*$row->SKS;
	$jmutu = $jmutu + $mutu;
	$jsks = $jsks + $row->SKS;
	$data = $data."<tr><td class='text-center'>$no</td><td class='text-center'>$row->KODE</td><td>  &nbsp;&nbsp;$row->MKL</td><td  class='text-center'>$row->SKS</td><td  class='text-center'>$row->NILAI</td><td  class='text-center'>$bobot</td></tr>";
	$no++;
}
$ipk = $jmutu/$jsks;

$html = '<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Transkrip Nilai</title>

  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
    name="viewport" />
  <meta name="viewport" content="width=device-width" />
  <link href="'.base_url('assets/css/bootstrap.min.css').'" rel="stylesheet" />
  <style>h1,h2,h3,h4,h5,h6 { font-weight:bold;}
  .glyph2 {
    width: 18px; 
    height: 20px; 
    margin:-3px 0 0 0px;
    padding: 0 2px;
    stroke-width:4px;
    color:#000;
  }

</style>
</head>
<body style="font-size:18px">
  <div class="container">
  	<h4 class="text-center">TRANSKRIP NILAI SEMENTARA</h4>
  	<br>
  	<table class="table table-bordered" style="font-size:12px">
  		<tr><td class="text-center"><strong>NO</strong></td><td class="text-center"><strong>Kode MK</strong></td><td class="text-center"><strong>Nama MK</strong></td><td class="text-center"><strong>SKS</strong></td><td class="text-center"><strong>Nilai</strong></td><td class="text-center"><strong>Bobot</strong></td></tr>
  '.$data.'
  		<tr><td colspan="5">&nbsp;&nbsp;<strong>Total SKS yang diambil</strong></td><td class="text-center">'.$jsks.'</td></tr>
  		<tr><td colspan="5">&nbsp;&nbsp;<strong>Total Bobot Nilai</strong></td><td class="text-center">'.$jmutu.'</td></tr>
  		<tr><td colspan="5">&nbsp;&nbsp;<strong>Indeks Prestasi Kumulatif (IPK)</strong></td><td class="text-center">'.$ipk.'</td></tr>
  	</table>
  </div>
</body>
</html>';
	



    $this->load->library('m_pdf');

	$mpdf=new mPDF();

	$mpdf->WriteHTML($html);

	$mpdf->Output();

	exit;

?>