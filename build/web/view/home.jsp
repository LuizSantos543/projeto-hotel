<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Usuario"%>
<%@page import="Controller.ControllerUsuario"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Easy Hotel</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="../view/css/menu-style.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.10.0/js/solid.js" ></script>
    <script defer src="https://use.fontawesome.com/releases/v5.10.0/js/fontawesome.js"></script>

</head>

<body>
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <img src="../view/img/logo.png" width=200 height=100 >
                <strong><img src="../view/img/logo-transparent.png" width=60 height=40></strong>
            </div>

            <ul class="list-unstyled components">
                <li>
                    <a href="../view/home.jsp">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>
                <li>
                    <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-pen"></i>
                        Cadastro
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu1">
                        <li>
                            <a href="../view/Funcionario/CadastrarFuncionario.jsp">Funcionário</a>
                        </li>
                        <li>
                            <a href="../view/Cliente/CadastrarCliente.jsp">Cliente</a>
                        </li>
                        <li>
                            <a href="../view/Quarto/CadastrarQuarto.jsp">Quarto</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="../view/Produto/CadastrarProduto.jsp">
                        <i class="fas fa-shopping-basket"></i>
                        Produtos
                    </a>
                </li>
                <li>
                    <a href="../view/Reserva/CadastrarReserva.jsp">
                        <i class="fas fa-address-book"></i>
                        Reservas
                    </a>
                </li>
                <!--
                <li>
                    <a href="checkin.jsp">
                        <i class="fas fa-door-open"></i>
                        Check-in
                    </a>
                </li>
                <li>
                    <a href="view/Check-out/RealizarCheck-out.jsp">
                        <i class="fas fa-door-closed"></i>
                        Check-out
                    </a>
                </li>
                -->
                 <li>
                    <a href="../view/Usuario/CadastrarUsuario.jsp">
                        <i class="fas fa-user"></i>
                        Usuários
                    </a>
                </li>
                
            </ul>
        </nav>
        <!-- End SideBar -->

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">


                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <i class="fas fa-sign-out-alt"></i>
                                <a  href="index.jsp">Sair</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

    <!--O script estava aqui-->
</body>

</html>
