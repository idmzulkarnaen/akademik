<?php
$menu = $this->uri->segment(1);
$idadmin = $this->session->userdata("idadmin");
if($idadmin==""){
  redirect("auth");
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin</title>

<link href="<?php echo base_url('assets');?>/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo base_url('assets');?>/css/bootstrap-table.css" rel="stylesheet">
<link href="<?php echo base_url('assets/css/datepicker3.css');?>" rel="stylesheet">
<link href="<?php echo base_url('assets');?>/css/styles.css" rel="stylesheet">
<link rel="shortcut icon" href="<?php echo base_url('assets');?>/images/logo.png">

<!--Icons-->
<script src="<?php echo base_url('assets');?>/js/lumino.glyphs.js"></script>
<link rel="stylesheet" href="<?php echo base_url('assets');?>/lib/datatables/dataTables.bootstrap.css">
<link rel="stylesheet" href="<?php echo base_url('assets/lib/select2/select2.min.css');?>">

    <link rel="stylesheet" href="<?php echo base_url('assets');?>/css/ionicons.min.css">
    <link rel="stylesheet" href="<?php echo base_url('assets');?>/css/jquery.scrollbar.css">
    <link rel="stylesheet" href="<?php echo base_url('assets');?>/css/animate.min.css">

<!--[if lt IE 9]>
<script src="<?php echo base_url('assets');?>/js/html5shiv.js"></script>
<script src="<?php echo base_url('assets');?>/js/respond.min.js"></script>
<![endif]-->

<script src="<?php echo base_url('assets');?>/js/jquery-1.11.1.min.js"></script>
<script src="<?php echo base_url('assets/lib/select2/select2.full.min.js');?>"></script>
<script src="<?php echo base_url('assets');?>/js/bootstrap.min.js"></script>
<script src="<?php echo base_url('assets/js/bootstrap-datepicker.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/lib/ckeditor/ckeditor.js'); ?>"></script>

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img src="<?php echo base_url('assets');?>/images/logo.png" alt="Logo" style="height: 40px; margin-top: -9px" ></a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> <?php $user = explode(" ",$this->session->userdata('namaadmin'));echo $user[0];?> <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a onclick="return confirm('Logout ?');" href="<?php echo base_url('auth/logout');?>"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li <?php if($menu=="")echo 'class="active"';?>><a href="<?php echo base_url();?>"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
			<li <?php if($menu=="mahasiswa")echo 'class="active"';?>><a href="<?php echo base_url('mahasiswa');?>"><svg class="glyph stroked male user "><use xlink:href="#stroked-male-user"/></svg> Data Mahasiswa</a></li>
			<li <?php if($menu=="makul")echo 'class="active"';?>><a href="<?php echo base_url('makul');?>"><svg class="glyph stroked app window with content"><use xlink:href="#stroked-app-window-with-content"/></svg> Data Mata Kuliah</a></li>
			<li <?php if($menu=="pengajaran")echo 'class="active"';?>><a href="<?php echo base_url('pengajaran');?>"><svg class="glyph stroked app window with content"><use xlink:href="#stroked-app-window-with-content"/></svg> Data Pengajaran</a></li>
			<li <?php if($menu=="pengumuman")echo 'class="active"';?>><a href="<?php echo base_url('pengumuman');?>"><svg class="glyph stroked sound on"><use xlink:href="#stroked-sound-on"/></svg> Pengumuman</a></li>
			<li <?php if($menu=="pengaturan")echo 'class="active"';?>><a href="<?php echo base_url('pengaturan');?>"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"/></svg> Pengaturan</a></li>

			
		</ul>
		<div class="attribution"><a href="<?php echo base_url();?>">Student Service Center</a> &copy; 2017</div>
	</div><!--/.sidebar-->
		
	<?php
	$this->load->view($konten);
	?>

	<script src="<?php echo base_url('assets');?>/lib/datatables/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url('assets');?>/lib/datatables/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets');?>/js/jquery.scrollbar.min.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
