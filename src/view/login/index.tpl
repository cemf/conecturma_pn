<!doctype html>
<html lang="pt_br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div class="row">
        <div align="center" class="col-md-12">
            <h1>Login</h1>
            <form action="login/login_observador" method="post">
                <h2>Observador</h2>
                Email  :<input type="text" name="observador_login_email"/>
                Senha :<input type="password" name="observador_senha"/>
                <button type="submit">Entrar</button>
            </form>
            <br>
            <a href="esqueci_senha"><button>Esquici a senha</button></a>
            <br>
            <form action="login/login_aluno" method="post">
                <h2>Aluno</h2>
                Nome  :<input type="text" name="aluno_login_nome"/>
                Senha :<input type="password" name="aluno_senha"/>
                <button type="submit">Entrar</button>
            </form>
            <a href="/formulario_cadastro"><button>Cadastrar</button></a>
        </div>
    </div>
% include('footer.tpl')