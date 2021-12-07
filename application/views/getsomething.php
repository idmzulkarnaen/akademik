<?php
echo "Status : selesai <br>";
$query1 = $this->db->query("select distinct year(tanggal) as tahun from tb_arsip order by tahun asc");
foreach ($query1->result() as $row1) {
	$query2 = $this->db->query("select count(year(tanggal)) as jumlah from tb_arsip where status ='selesai' and year(tanggal) = '$row1->tahun'");
	$jml = 0;
	foreach ($query2->result() as $row2) {
		$jml = $row2->jumlah;
	}

	echo $row1->tahun." = ".$jml."<br>";
}


echo " <br> <br>
Status : Laporan <br>";
$query1 = $this->db->query("select distinct year(tanggal) as tahun from tb_arsip order by tahun asc");
foreach ($query1->result() as $row1) {
	$query2 = $this->db->query("select count(year(tanggal)) as jumlah from tb_arsip where status ='laporan' and year(tanggal) = '$row1->tahun'");
	$jml = 0;
	foreach ($query2->result() as $row2) {
		$jml = $row2->jumlah;
	}

	echo $row1->tahun." = ".$jml."<br>";
}
?>