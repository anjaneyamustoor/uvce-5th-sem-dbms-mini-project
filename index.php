<?php session_start(); ?>
<html>
<?php require ("header.php");?>
  <body class="bg-white" id="top">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg bg-default navbar-light position-sticky top-0 shadow py-0">
      <div class="container">
        <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
          <li class="nav-item dropdown">
            <a href="index.php" class="navbar-brand mr-lg-5 text-white">
              <h3 style="color: white; font-family:Verdana, Geneva, Tahoma, sans-serif;">Exam Portal UVCE</h3>                   
            </a>
          </li>
        </ul>
        <button class="navbar-toggler bg-white" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon text-white"></span>
        </button>
        
        <div class="navbar-collapse collapse bg-default" id="navbar_global">
          <div class="navbar-collapse-header">
            <div class="row">
              <div class="col-10 collapse-brand">
                <a href="index.html">
                  <img src="assets/img/navbar.png" />
                </a>
              </div>
              <div class="col-2 collapse-close bg-danger">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <ul class="navbar-nav align-items-lg-center ml-auto">
		        
            <li class="nav-item">
              <a href="contact.php" class="nav-link">
                <span class="text-white nav-link-inner--text"><i class="text-white fas fa-address-card"></i>Contact</span>
              </a>
            </li>
			
				    <li class="nav-item">
			        <div class="dropdown show ">
		            <a class="nav-link dropdown-toggle text-white " href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		              <span class="text-white nav-link-inner--text"><i class="text-white fas fa-sign-in-alt"></i> Login</span>
		            </a>
		            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			            <a class="dropdown-item" href="loginstud.php">Student</a>
			            <a class="dropdown-item" href="login.php">Staff</a>
		            </div>
		          </div>
			      </li>

            <li class="nav-item">
              <a href="signup.php" class="nav-link">
                <span class="text-white nav-link-inner--text"><i class="text-white fas fa-user-plus"></i> Sign Up</span>
              </a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="wrapper" >
      <div class="page-header">
        <div class="page-header-image" style="background-image: url('assets/img/wallpaperflare.com_wallpaper.jpg')"></div>  
          <div class="container shape-container d-flex align-items-center py-lg">
            <div class="col px-0">
              <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 text-left">
                  <h1 class="text-black display-1">Hey!</h1>
                  <h2 class="display-4 font-weight-normal text-black">Register Here 👇</h2>
                  <div class="btn-wrapper mt-4">
                    <a href="signup.php"   class="btn btn-warning btn-icon mt-3 mb-sm-0">
                      <span class="btn-inner--icon"><i class="ni ni-button-play"></i></span>
                      <span class="btn-inner--text">Sign Up</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <div class="section features-6 text-dark bg-white" id="services">
      <div class="container ">
        <div class="row">
          <div class="col-md-8 mx-auto text-center">
            <span class="badge badge-primary badge-pill mb-3">Exam Portal</span>
              <h3 class="display-3 ">Features</h3>
          </div>
        </div>
        
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="info info-horizontal info-hover-warning">
              <div class="description pl-4">
                <h3 class="title" >For Students</h3>
                  <p class=" ">Taking Quiz is now made easier. Register and start taking quiz at your own convienence.</p>      
              </div>
            </div>
            <div class="info info-horizontal info-hover-primary mt-5">
              <div class="description pl-4">
                <h3 class="">For Teachers</h3>
                  <p class=" ">Now you can create quiz online and make the students take the online without any hassle.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-10 mx-md-auto d-none d-md-block">
            <img class="ml-lg-5 img-fluid" src="assets/img/pic1.png">
          </div>
        </div>
      </div>
    </div>
    <div>
      <?php require("footer.php");?>
    </div>	
</div>
</body>
</html>