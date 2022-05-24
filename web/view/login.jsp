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
        <link rel="stylesheet" href="css/login-style.css">
    </head>
    <!-- comment 
   <script type="text/javascript">
        function validarLogin(){
            if(document.formLogin.txtUsuario.value == ""){
                alert("Campo Usuário Não Informado!");
                return false;
            }
            
            if(document.formLogin.txtSenha.value == ""){
                alert("Campo Senha Não Informado!");
                return false;
            }
            document.formLogin.submit()
        }
    </script>
    -->
    <body>
    <div class="container">
        <div class="card card-container">
           
            <img id="profile-img" class="profile-img-card" src="img/logo-login.png" />
  
            <form name="formLogin" class="form-signin" method="post" action="/teste hotel/ControllerLogin">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="nome" class="form-control" name="txtUsuario" placeholder="Login" required autofocus>
                <input type="password" id="senha" class="form-control" name="txtSenha" placeholder="Senha" required>
               
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" onclick="validarLogin()">Entrar</button>
            </form><!-- /form -->
            <a href="../view/Usuario/AtualizarUsuario.jsp" class="forgot-password">
                Esqueceu login ou senha?
            </a>
        </div><!-- /card-container -->
    </div>
    
</body>

</html>
