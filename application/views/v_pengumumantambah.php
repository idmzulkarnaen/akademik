	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="<?php echo base_url();?>"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li><a href="<?php echo base_url('pengumuman');?>">Pengumuman</a></li>
				<li class="active">Tambah Pengumuman</li>
			</ol>
		</div><!--/.row-->
		
		
		<br>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Tambah Pengumuman</div>
					<div class="panel-body">

					<?php
            $peringatan = $this->session->flashdata('peringatan');
            if($peringatan!=""){
              echo $peringatan;
            }
            ?>

            <form class="form-horizontal" action="<?php echo base_url('pengumuman/prosestambah');?>" method="post" enctype="multipart/form-data">

              <div class="box-body">

                <div class="form-group">
                  <label for="nama" class="col-sm-2 control-label">Judul pengumuman</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="judul" name="judul" placeholder="Masukan judul pengumuman"  required>
                  </div>
                </div>

                 <div class="form-group">
                  <label for="tempat" class="col-sm-2 control-label">Pengumuman</label>
                  <div class="col-sm-10">
                    <textarea class="form-control" id="pengumuman" name="pengumuman" placeholder="Masukan pengumuman" required></textarea>
                    
                  </div>
                </div>


                 <div class="form-group">
                  <label for="keterangan" class="col-sm-2 control-label">File</label>
                  <div class="col-sm-10">
                    <input type="file" name="file1" class="btn btn-default" style="margin-bottom: 10px">
                    <input type="file" name="file2" class="btn btn-default" style="margin-bottom: 10px">
                    <input type="file" name="file3" class="btn btn-default" style="margin-bottom: 10px">
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
        CKEDITOR.replace('pengumuman');
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