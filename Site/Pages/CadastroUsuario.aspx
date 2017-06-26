<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="Site.Pages.CadastroUsuario" %>

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
                    <h3 class="well">Cadastro de Usuário</h3>
                    <br/>

                    Nome: <br />
                   <asp:TextBox ID="txtNome" runat="server" placeholder="Preencha seu Nome Completo" Width="45%" CssClass="form-control" />
                   
                    <asp:RequiredFieldValidator 
                        ID="requiredNome" 
                        runat="server" 
                        ControlToValidate="txtNome" 
                        ErrorMessage="Preencha o nome corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 
                   Endereço: <br />
                   <asp:TextBox ID="txtEndereco" runat="server" placeholder="Preencha seu Endereço" Width="45%" CssClass="form-control" />
                   
                   <asp:RequiredFieldValidator 
                        ID="RequiredEndereco" 
                        runat="server" 
                        ControlToValidate="txtEndereco" 
                        ErrorMessage="Preencha o endereço corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 


                   E-mail: <br />
                   <asp:TextBox ID="txtEmail" runat="server" placeholder="Preencha seu e-mail" Width="45%" CssClass="form-control" />
                   
                   <asp:RequiredFieldValidator 
                        ID="RequiredEmail" 
                        runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Preencha o e-mail corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 

                     Senha: <br />
                   <asp:TextBox ID="txtSenha" runat="server" placeholder="Preencha sua senha" Width="45%" CssClass="form-control" type="password" />
                   
                   <asp:RequiredFieldValidator 
                        ID="RequiredSenha" 
                        runat="server" 
                        ControlToValidate="txtSenha" 
                        ErrorMessage="Preencha a senha corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 
                    <p>
                        <asp:Label ID="lblMensagem" runat="server" />
                    </p>

                    <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-success" OnClick="btnCadastroCliente_Click" />
                    <a href="/default.aspx" class="btn btn-default"> Voltar</a>
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
