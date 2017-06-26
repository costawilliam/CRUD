﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalhesUsuarios.aspx.cs" Inherits="Site.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-1.9.1.min.js"> </script>
    <script src="Scripts/bootstrap.min.js"> </script>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
	    <div class="container-fluid">
		    <div class="navbar-header">
			    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				    <span class="sr-only">Toggle navigation</span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand" href="/default.aspx">SOS Bicho</a>
		    </div>

	
		    <div id="navbar" class="navbar-collapse collapse">
			    <ul class="nav navbar-nav navbar-right">
				    <li><a href="/Pages/CadastroUsuario.aspx">Cadastrar Usuário</a></li>
				    <li><a href="/Pages/ConsultaUsuarios.aspx">Listar Usuários</a></li>
				    <li><a href="/Pages/CadastroAnimal.aspx">Cadastrar Animal</a></li>
				    <li><a href="/Pages/ConsultaAnimais.aspx">Listar Animais</a></li>
				    <li><a href="/Pages/Login.aspx">Login</a></li>
			    </ul>
		    </div>	
	    </div>
    </nav> 
    <br/>
    <br />
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
