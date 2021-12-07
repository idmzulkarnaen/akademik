<?php
$layanan ="";
$tgllayanan ="";

foreach ($rlayananmobile as $row) {
  $layanan = $row->isi;
  $tgllayanan = $row->tgl_update;
}



?>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="<?php echo base_url();?>"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Pengaturan</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Pengaturan</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
       Pengaturan     
          </div>
					<div class="panel-body">
						<?php
            $peringatan = $this->session->flashdata('peringatan');
            if($peringatan!=""){
              echo $peringatan;
            }

            ?>
            <br>
            
            <div class="row">
              <div class="col-md-8">
                <p>Aktifkan layanan mobile</p>
              </div>
              <div class="col-md-3 text-right">
                <input type="checkbox" onchange="setprogres();" id="layanan" name="layanan" <?php if($layanan=="1")echo "checked";?> /> 
              </div>
            </div>
            <hr>
              
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->
		
	</div><!--/.main-->


  <script type="text/javascript">
    function setprogres(){
        var sts;
        if(document.getElementById('layanan').checked) {
            sts = 1;
        } else {
            sts = 0;
        }

      $.ajax({
        url     : '<?php echo base_url("pengaturan/setlayananmobile");?>',
        data    : '&sts='+sts,
        type    : 'POST',
        dataType: 'html',
        success : function(pesan){
                    
                }
      });
    }
  </script>
