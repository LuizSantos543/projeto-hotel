<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
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
    <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search" style="height: 100px;background: rgb(36,82,135);">
        <div class="container-fluid">
            <div><img id="logo" src="img/logo.png" style="width:200px;height:100px;"></div><!-- Start: Navigation with Button -->
            <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="height: 87px;width: 450px;background: rgb(36,82,135);">
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
    </nav><!-- Start: Contact Form Clean -->
    <section class="contact-clean" style="box-shadow: 0px 0px;background: url(&quot;img/background.png&quot;) center / cover;">
        <form method="post">
            <h2 class="text-center">Contato</h2>
            <div class="mb-3"><input class="form-control" type="text" name="name" placeholder="Nome"></div>
            <div class="mb-3"><input class="form-control" type="email" name="email" placeholder="Email"><br>
            <div class="mb-3"><textarea class="form-control" name="message" placeholder="Mensagem" rows="14"></textarea></div>
            <div class="mb-3"><button class="btn btn-primary" type="submit">Enviar</button></div>
        </form>
    </section><!-- End: Contact Form Clean -->
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
