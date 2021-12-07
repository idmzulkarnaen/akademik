

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="<?php echo base_url();?>"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li><a href="<?php echo base_url('pengajaran');?>">Pengajaran</a></li>
				<li class="active">Tambah Pengajaran</li>
			</ol>
		</div><!--/.row-->
		
		
		<br>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Tambah Pengajaran</div>
					<div class="panel-body">

					<?php
            $peringatan = $this->session->flashdata('peringatan');
            if($peringatan!=""){
              echo $peringatan;
            }
            ?>

            <form class="form-horizontal" action="<?php echo base_url('pengajaran/prosestambah');?>" method="post" enctype="multipart/form-data">

              <div class="box-body">

                <div class="form-group">
                  <label for="nama" class="col-sm-2 control-label">Kelas</label>
                  <div class="col-sm-10">
                    <select class="form-control select2" multiple="multiple" data-placeholder="Pilih kelas" style="width: 100%;" id="kelas" name="kelas[]" required>
                      <?php
                      foreach ($rkelas as $row) {
                        echo "<option value='$row->KELAS'>$row->NAMAKELAS</option>";
                      }
                      ?>
                    </select>
                    
                  </div>
                </div>

                <div class="form-group">
                  <label for="nama" class="col-sm-2 control-label">Mata Kuliah</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="makul" name="makul" required>
                      <?php
                      foreach ($rmakul as $row) {
                        echo "<option value='$row->KODE'>$row->MKL</option>";
                      }
                      ?>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="nama" class="col-sm-2 control-label">Dosen</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="dosen" name="dosen" required>
                      <?php
                      foreach ($rdosen as $row) {
                        echo "<option value='$row->NIK'>$row->NAMA</option>";
                      }
                      ?>
                    </select>
                  </div>
                </div>

                <br>
                <div class="form-group">
                  <label for="nama" class="col-sm-2 control-label text-primary">Jadwal</label>
                  <div class="col-sm-10 text-right">
                    <button class="btn btn-default " type="button" onclick="tambahjadwal()">Tambah jadwal</button>
                    <hr>
                  </div>
                </div>
      
                <div id="jadwal" class="col-sm-10 col-sm-offset-2">

                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="nama" class="col-sm-2">Jenis</label>
                        <div class="col-sm-10">
                          <select class="form-control" id="jenis" name="jenis[]" required>
                            <option value='T'>Teori</option>
                            <option value='P'>Praktikum</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="nama" class="col-sm-2">Ruang</label>
                        <div class="col-sm-10">
                          <select class="form-control" id="jenis" name="ruang[]" required>
                            <option value='2.1'>2.1</option>
                            <option value='2.2'>2.2</option>
                            <option value='2.3'>2.3</option>
                            <option value='2.4'>2.4</option>
                            <option value='2.5'>2.5</option>
                            <option value='2.6'>2.6</option>
                            <option value='2.7'>2.7</option>
                            <option value='2.8'>2.8</option>
                            <option value='2.9'>2.9</option>
                            <option value='3.1'>3.1</option>
                            <option value='3.2'>3.2</option>
                            <option value='3.3'>3.3</option>
                            <option value='3.4'>3.4</option>
                            <option value='3.5'>3.5</option>
                            <option value='3.6'>3.6</option>
                            <option value='3.7'>3.7</option>
                            <option value='3.8'>3.8</option>
                            <option value='3.9'>3.9</option>

                            <option value='LAB 1'>LAB 1</option>
                            <option value='LAB 2'>LAB 2</option>
                            <option value='LAB 3'>LAB 3</option>
                            <option value='LAB 4'>LAB 4</option>
                            <option value='LAB 5'>LAB 5</option>
                            <option value='LAB 6'>LAB 6</option>
                            <option value='LAB 7'>LAB 7</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="nama" class="col-sm-2">Hari</label>
                        <div class="col-sm-10">
                          <select class="form-control" id="jenis" name="hari[]" required>
                            <option value='Senin'>Senin</option>
                            <option value='Selasa'>Selasa</option>
                            <option value='Selasa'>Rabu</option>
                            <option value='Kamis'>Kamis</option>
                            <option value='Jumat'>Jumat</option>
                            <option value='Sabtu'>Sabtu</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="nama" class="col-sm-2">Jam</label>
                        <div class="col-sm-10">
                          <select class="form-control" id="jenis" name="jam[]" required>
                            <?php
                            foreach ($rjam as $row) {
                              echo "<option value='$row->idJam'>$row->jam1 - $row->jam2</option>";
                            }
                            ?>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div><br><br>
                </div>
                

                 

              </div>
              <!-- /.box-body -->
              <hr>
              <div class="col-sm-10 col-sm-offset-2">
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
    $(".select2").select2();
  });

  function tambahjadwal(){
    $("#jadwal").append('<div class="row"><div class="col-sm-6"><div class="form-group"><label for="nama" class="col-sm-2">Jenis</label><div class="col-sm-10"><select class="form-control" id="jenis" name="jenis[]" required><option value="T">Teori</option><option value="P">Praktikum</option></select></div></div><div class="form-group"><label for="nama" class="col-sm-2">Ruang</label><div class="col-sm-10"><select class="form-control" id="jenis" name="ruang[]" required><option value="2.1">2.1</option><option value="2.2">2.2</option><option value="2.3">2.3</option><option value="2.4">2.4</option><option value="2.5">2.5</option><option value="2.6">2.6</option><option value="2.7">2.7</option><option value="2.8">2.8</option><option value="2.9">2.9</option><option value="3.1">3.1</option><option value="3.2">3.2</option><option value="3.3">3.3</option><option value="3.4">3.4</option><option value="3.5">3.5</option><option value="3.6">3.6</option><option value="3.7">3.7</option><option value="3.8">3.8</option><option value="3.9">3.9</option><option value="LAB 1">LAB 1</option><option value="LAB 2">LAB 2</option><option value="LAB 3">LAB 3</option><option value="LAB 4">LAB 4</option><option value="LAB 5">LAB 5</option><option value="LAB 6">LAB 6</option><option value="LAB 7">LAB 7</option></select></div></div></div><div class="col-sm-6"><div class="form-group"><label for="nama" class="col-sm-2">Hari</label><div class="col-sm-10"><select class="form-control" id="jenis" name="hari[]" required><option value="Senin">Senin</option><option value="Selasa">Selasa</option><option value="Selasa">Rabu</option><option value="Kamis">Kamis</option><option value="Jumat">Jumat</option><option value="Sabtu">Sabtu</option></select></div></div><div class="form-group"><label for="nama" class="col-sm-2">Jam</label><div class="col-sm-10"><select class="form-control" id="jenis" name="jam[]" required><?php foreach ($rjam as $row) { echo "<option value=\"$row->idJam\">$row->jam1 - $row->jam2</option>"; } ?></select></div></div></div></div><br><br>');
  }
</script>