<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Easy Hotel</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="css/styles.min.css">
</head>

<body>
    <!-- Start: Header Blue -->
    <header class="header-blue">
        <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search" style="height: 100px;">
            <div class="container-fluid">
                <div><img id="logo" src="img/logo.png" style="width:200px;height:100px;"></div><!-- Start: Navigation with Button -->
                <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="height: 87px;width: 450px;">
                    <div class="container"><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navcol-1">
                            <ul class="navbar-nav me-auto">
                                <li class="nav-item"><a class="nav-link" href="index.jsp" style="font-size: 16px;color: var(--bs-white);">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="contato.jsp" style="font-size: 16px;color: var(--bs-white);">Contato</a></li>
                            </ul><span class="navbar-text actions"> <a class="btn btn-light action-button" role="button" href="login.jsp">Entrar</a></span>
                        </div>
                    </div>
                </nav><!-- End: Navigation with Button --><button class="navbar-toggler" data-bs-toggle="collapse"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            </div>
        </nav>
        <div class="container hero">
            <div class="row">
                <!-- Start: Text -->
                <div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
                    <h1>Sistema de gerenciamento para hotéis e pousadas.</h1>
                    <p>Tenha mais controle do seu hotel ou pousada com o Easy Hotel, sistema voltado para o gerenciamento de quartos e produtos oferecidos no seu estabelecimento.&nbsp;</p>
                </div><!-- End: Text -->
                <div class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
                    <!-- Start: iPhone -->
                    <div class="phone-mockup"><img class="device" src="img/logo-transparent.png" style="margin: 0px;padding: -20px;width: 300px;height: 300px;margin-top: 83px;margin-right: 30px;">
                        <div class="screen" style="background: #000000;"></div>
                    </div><!-- End: iPhone -->
                </div>
            </div>
        </div>
    </header><!-- End: Header Blue -->
    <!-- Start: Features Boxed -->
    <section class="features-boxed" style="color: rgb(36,82,135);">
        <div class="container">
            <!-- Start: Intro -->
            <div class="intro">
                <h2 class="text-center">Recursos</h2>
            </div><!-- End: Intro -->
            <!-- Start: Features -->
            <div class="row justify-content-center features">
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-building-o icon"></i>
                        <h3 class="name">Gerenciamento</h3>
                        <p class="description">Gerencie seu hotel de maneira simples e fácil.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-clock-o icon"></i>
                        <h3 class="name">Organização</h3>
                        <p class="description">Módulos organizados para que você possa ganhar tempo na hora das reservas.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-user icon"></i>
                        <h3 class="name">Controle</h3>
                        <p class="description">O sistema permite criar diferentes tipos de usuários para um melhor controle.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-calendar-o icon"></i>
                        <h3 class="name">Reservas</h3>
                        <p class="description">Visualize as reservas do seu hotel ou pousada sem problemas.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-leaf icon"></i>
                        <h3 class="name">Produtos</h3>
                        <p class="description">O sistema também permite controlar os produtos consumidos pelo cliente e adiciona-os no check-out</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-globe icon"></i>
                        <h3 class="name">Plataforma</h3>
                        <p class="description">Sistema totalmente web sem a necessidade de intalação.</p>
                    </div>
                </div>
            </div><!-- End: Features -->
        </div>
    </section><!-- End: Features Boxed -->
    <!-- Start: Footer Basic -->
    <footer class="footer-basic" style="background: rgb(36,82,135);color: #ffffff;">
        <!-- Start: Social Icons -->
        <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div><!-- End: Social Icons -->
        <!-- Start: Links -->
        <ul class="list-inline"></ul><!-- End: Links -->
        <!-- Start: Copyright -->
        <p class="copyright">Easy Hotel© 2021</p><!-- End: Copyright -->
    </footer><!-- End: Footer Basic -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/script.min.js"></script>
</body>

</html>