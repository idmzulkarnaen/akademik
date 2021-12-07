<?php
$idtips ="";
$judultips = "";
$tips = "";
$status = "";

foreach ($result as $row) {
  $idtips = $row->id_tips;
  $judultips = $row->judul_tips;
  $tips = $row->tips;
  $status = $row->status;
}


?>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="<?php echo base_url('admin');?>"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li><a href="<?php echo base_url('admin/tips');?>">Tips</a></li>
				<li class="active">Edit Tips</li>
			</ol>
		</div><!--/.row-->
		
		
		<br>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Edit Tips</div>
					<div class="panel-body">

					<?php
            $peringatan = $this->session->flashdata('peringatan');
            if($peringatan!=""){
              echo $peringatan;
            }
            ?>

            <form class="form-horizontal" action="<?php echo base_url('mimin/tips/prosesedit');?>" method="post" enctype="multipart/form-data">

            <input type="hidden" name="id" value="<?php echo $idtips;?>">
              <div class="box-body">

                <div class="form-group">
                  <label for="nama" class="col-sm-2 control-label">Judul tips</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="judul" name="judul" placeholder="Masukan judul tips" value="<?php echo $judultips;?>" required>
                  </div>
                </div>

                 <div class="form-group">
                  <label for="tempat" class="col-sm-2 control-label">Tips</label>
                  <div class="col-sm-10">
                    <textarea class="form-control" id="tips" name="tips" placeholder="Masukan tips" required><?php echo $tips;?></textarea>
                    
                  </div>
                </div>


                 <div class="form-group">
                  <label for="keterangan" class="col-sm-2 control-label">Status</label>
                  <div class="col-sm-10">
                    <select  class="form-control" id="status" name="status" required>
                      <option value="1" <?php if($status=="1") echo "selected" ?>>Publish</option>
                      <option value="0" <?php if($status=="0") echo "selected" ?>>Draft</option>
                    </select>
                  </div>
                </div>

                 

              </div>
              <!-- /.box-body -->
              <div class="text-center">
              	<hr>
                <button type="button" class="btn btn-default" onclick="history.back()">Batal</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
            </form>

					</div>
				</div>
			</div>
		</div><!--/.row-->	
			
	
	</div><!--/.main-->


<script type="text/javascript">
      $(function () {
        CKEDITOR.replace('tips');
        $(".select2").select2();

        CKEDITOR.on('instanceReady', function (ev) {
            ev.editor.dataProcessor.htmlFilter.addRules( {
                elements : {
                    img: function( el ) {
                        // Add bootstrap "img-responsive" class to each inserted image
                        el.addClass('img-responsive');
                
                        // Remove inline "height" and "width" styles and
                        // replace them with their attribute counterparts.
                        // This ensures that the 'img-responsive' class works
                        var style = el.attributes.style;
                
                        if (style) {
                            // Get the width from the style.
                            var match = /(?:^|\s)width\s*:\s*(\d+)px/i.exec(style),
                                width = match && match[1];
                
                            // Get the height from the style.
                            match = /(?:^|\s)height\s*:\s*(\d+)px/i.exec(style);
                            var height = match && match[1];
                
                            // Replace the width
                            if (width) {
                                el.attributes.style = el.attributes.style.replace(/(?:^|\s)width\s*:\s*(\d+)px;?/i, '');
                                el.attributes.width = width;
                            }
                
                            // Replace the height
                            if (height) {
                                el.attributes.style = el.attributes.style.replace(/(?:^|\s)height\s*:\s*(\d+)px;?/i, '');
                                el.attributes.height = height;
                            }
                        }
                
                        // Remove the style tag if it is empty
                        if (!el.attributes.style)
                            delete el.attributes.style;
                    }
                }
            });
        });
        
      });


    </script>