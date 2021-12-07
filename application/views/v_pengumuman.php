
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="<?php echo base_url();?>"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Pengumuman</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Pengumuman</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Data Pengumuman</div>
					<div class="panel-body">
						<a href='<?php echo base_url('pengumuman/tambah');?>' class='btn btn-primary' title='Tambah'><svg class="glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg> Tambah</a>
						<br><br>
						<div class="table-responsive">
							<table class="table table-bordered table-hover" id="table1">
							    <thead>
							    <tr>
							    	<th data-sortable="true">No</th>
					                <th data-sortable="true">Judul</th>
					                <th data-sortable="true">Tanggal</th>
					                <th data-sortable="true">Admin</th>
					                <th data-sortable="true">Pilihan</th>
							    </tr>
							    </thead>
							    <tbody>
				                <?php
				                $no = 1;
				                foreach ($result as $row) {

				                  

				                  echo "<tr>
				                  <td>$no</td>
				                  <td>$row->judul_pengumuman</td>
				                  <td>".tanggal($row->tgl_pengumuman)."</td>
				                  <td>$row->nama_admin</td>
				                  <td>";

				                  echo "
				                  <a href='".base_url('pengumuman/edit/'.$row->id_pengumuman)."' class='btn btn-warning' title='Edit'><svg class='glyph stroked pencil'><use xlink:href='#stroked-pencil'/></svg></a>
				                  <a href='".base_url('pengumuman/proseshapus/'.$row->id_pengumuman)."' onclick='return confirm(\"Hapus pengumuman ?\");' class='btn btn-danger' title='Hapus'><svg class='glyph stroked trash'><use xlink:href='#stroked-trash'/></svg>

	 </a>
				                  </td>                  
				                  </tr>";

				                  $no++;
				                }
				                ?>
				                </tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
			
	
	</div><!--/.main-->


<script>
  $(function () {
    $("#table1").DataTable();
    
  });
</script>