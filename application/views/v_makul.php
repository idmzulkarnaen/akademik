
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="<?php echo base_url('admin');?>"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Data Mata Kuliah</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Data Mata Kuliah</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<a href='<?php echo base_url('makul/tambah');?>' class='btn btn-primary' title='Tambah'><svg class="glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg> Tambah</a>

						<a href="javascript:void(0);" data-toggle="modal" data-target=".bs-example-modal-sm" class="btn btn-success"><svg class="glyph stroked download"><use xlink:href="#stroked-download"/></svg> Import Excel</a>
						<br><br>
						<?php
			            $peringatan = $this->session->flashdata('peringatan');
			            if($peringatan!=""){
			              echo $peringatan;
			            }
			            ?>
						<table class="table table-bordered table-hover" id="table1">
						    <thead>
						    <tr>
						    	<th data-sortable="true">No</th>
				                <th data-sortable="true">Kode</th>
				                <th data-sortable="true">Makul</th>
				                <th data-sortable="true">SKS</th>
				                <th data-sortable="true">Semester</th>
				                <th data-sortable="true">Jurusan</th>
				                <th data-sortable="true">Status</th>
				                <th data-sortable="true">Pilihan</th>
						    </tr>
						    </thead>
						    <tbody>
			                <?php
			                $no = 1;
			                foreach ($result as $row) {


			                  echo "<tr>
			                  <td>$no</td>
			                  <td>$row->KODE</td>
			                  <td>$row->MKL</td>
			                  <td>$row->SKS</td>
			                  <td>$row->SEM1</td>
			                  <td>$row->KD_JUR</td>
			                  <td>$row->aktif</td>
			                  <td>";

			                  echo "
			                  <a href='".base_url('makul/edit/'.$row->KODE)."' class='btn btn-warning' title='Edit'><svg class='glyph stroked pencil'><use xlink:href='#stroked-pencil'/></svg></a>
			                  <a href='".base_url('makul/proseshapus/'.$row->KODE)."' onclick='return confirm(\"Hapus mahasiswa ?\");' class='btn btn-danger' title='Hapus'><svg class='glyph stroked trash'><use xlink:href='#stroked-trash'/></svg>

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
		</div><!--/.row-->	
			
	
	</div><!--/.main-->

	<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <form enctype='multipart/form-data' action='<?php echo base_url('makul/importexcel');?>' method='post'>

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Import Data Mata Kuliah</h4>
      </div>
      <div class="modal-body">
      <div class="row">
	      <div class="col-md-6">
	      	<label for="file">Contoh format excel</label> <br>
		    <a href="<?php echo base_url('assets/xls/examplemakul.xlsx');?>" class="btn btn-success"><i class="ion ion-ios-download-outline"></i> Download</a>
	      </div>
	      <div class="col-md-6">
	      	<label for="file">Pilih file excel</label>
		    <input type="file" name="file" class="btn btn-default" id="file">
	      </div>
      </div>
      <br>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
        <button type="submit" class="btn btn-primary">Import</button>
      </div>
      </form>
    </div>
  </div>
</div>


<script>
  $(function () {
    $("#table1").DataTable();
    
  });
</script>