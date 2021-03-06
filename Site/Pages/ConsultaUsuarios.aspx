﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaUsuarios.aspx.cs" Inherits="Site.Pages.Consulta" %>

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
 <div class="container">
            <div class="span10 offset1">
                <div class="row">
                    <h3 class="well">Consulta de Usuários</h3>
                    <br/>

                    <asp:GridView ID="dgListaPessoa" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" BackColor="#ccccff">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Código" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Endereco" HeaderText="Endereço" />
                            <asp:BoundField DataField="Email" HeaderText="E-mail" />
                        </Columns>
                        <RowStyle CssClass="cursor-pointer" />

                    </asp:GridView>

                    <br /> <br /> 
                    <p>
                        <asp:Label ID="lblMensagem" runat="server" />
                    </p>
                    <a href="/default.aspx" class="btn btn-default"> Voltar</a>
                    <br /> 
                </div>
            </div>
        </div>
    </form>
</body>
</html>
