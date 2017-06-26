<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
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
        <div class="jumbotron">
            <h1> Projeto CRUD</h1>
            Selecione a operação desejada:
            <asp:DropDownList ID="ddlMenu" runat="server" >
                <asp:ListItem Value="0" Text="- Escolha uma opção -" />
                <asp:ListItem Value="1" Text="Cadastrar Usuário" />
                <asp:ListItem Value="2" Text="Listar Usuários" />
                <asp:ListItem Value="3" Text="Consultar Usuário" />
                <asp:ListItem Value="4" Text="Cadastrar Animal" />
                <asp:ListItem Value="5" Text="Listar Animais" />
                <asp:ListItem Value="6" Text="Consultar Animal" />
            </asp:DropDownList>
            <asp:Button ID="btnMenu" runat="server" Text ="Acessar" cssClass="btn btn-primary" OnClick="btnAcessar_Click"/>
            <p>
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </p>

        </div>
    </form>
</body>
</html>
