<!-- Header -->
<div class="header bg-primary pb-6">
<div class="container-fluid">
    <div class="header-body">
    <div class="row align-items-center py-4">
        <div class="col-lg-6 col-7">
        <h6 class="h2 text-white d-inline-block mb-0">Inicio</h6>
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Home</a></li>
            </ol>
        </nav>
        </div>
    </div>
    <!-- Card stats -->
    <div class="row">
        <div class="col-xl-3 col-md-6">
        <div class="card card-stats">
            <!-- Card body -->
            <div class="card-body">
            <div class="row">
                <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Pinturas</h5>
                <span class="h2 font-weight-bold mb-0"><?php  echo $cants->cant_roduct; ?></span>
                </div>
                <div class="col-auto">
                <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                    <i class="ni ni-box-2"></i>
                </div>
                </div>
            </div>
            <p class="mt-3 mb-0 text-sm">
                <span class="text-nowrap">Total</span>
            </p>
            </div>
        </div>
        </div>
        <div class="col-xl-3 col-md-6">
        <div class="card card-stats">
            <!-- Card body -->
            <div class="card-body">
            <div class="row">
                <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Ventas</h5>
                <span class="h2 font-weight-bold mb-0"><?php  echo $cants->cant_sale; ?></span>
                </div>
                <div class="col-auto">
                <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
                    <i class="ni ni-money-coins"></i>
                </div>
                </div>
            </div>
            <p class="mt-3 mb-0 text-sm">
                <span class="text-nowrap">Total</span>
            </p>
            </div>
        </div>
        </div>
        <div class="col-xl-3 col-md-6">
        <div class="card card-stats">
            <!-- Card body -->
            <div class="card-body">
            <div class="row">
                <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Clientes</h5>
                <span class="h2 font-weight-bold mb-0"><?php  echo $cants->cant_client; ?></span>
                </div>
                <div class="col-auto">
                <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
                    <i class="ni ni-active-40"></i>
                </div>
                </div>
            </div>
            <p class="mt-3 mb-0 text-sm">
                <span class="text-nowrap">Total</span>
            </p>
            </div>
        </div>
        </div>
        <div class="col-xl-3 col-md-6">
        <div class="card card-stats">
            <!-- Card body -->
            <div class="card-body">
            <div class="row">
                <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Usuarios</h5>
                <span class="h2 font-weight-bold mb-0"><?php  echo $cants->cant_user; ?></span>
                </div>
                <div class="col-auto">
                <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                    <i class="ni ni-circle-08"></i>
                </div>
                </div>
            </div>
            <p class="mt-3 mb-0 text-sm">
                <span class="text-nowrap">Total</span>
            </p>
            </div>
        </div>
        </div>
    </div>
    </div>
</div>
</div>
<div class='divider'></div>
<div class='t-divider'></div>
              <h1 class="text-white" style= text-align:center>Estas son las pinturas existentes</h1>
              <div class='t-divider'></div>
<div id="carrusel" class="carousel slide page-top" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carrusel" data-slide-to="1" class="active"></li>
    <li data-target="#carrusel" data-slide-to="2"></li>
    <li data-target="#carrusel" data-slide-to="3"></li>
    <li data-target="#carrusel" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="assets/img/slider/1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/slider/2.jpg" alt="Second slide" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/slider/3.png" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="assets/img/slider/4.png" alt="Four slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carrusel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carrusel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class='divider'></div>