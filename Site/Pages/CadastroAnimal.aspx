<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroAnimal.aspx.cs" Inherits="Site.Pages.CadastroAnimal" %>

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
                    <h3 class="well">Cadastro de Animal</h3>
                    <br/>

                    Nome: <br />
                   <asp:TextBox ID="txtNomeAnimal" runat="server" placeholder="Preencha seu Nome Completo" Width="45%" CssClass="form-control" />
                   
                    <asp:RequiredFieldValidator 
                        ID="requiredNome" 
                        runat="server" 
                        ControlToValidate="txtNomeAnimal" 
                        ErrorMessage="Preencha o nome corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 

                    Porte: <br />
                   <asp:TextBox ID="txtPorte" runat="server" placeholder="Preencha seu Nome Completo" Width="45%" CssClass="form-control" />
                   
                    <asp:RequiredFieldValidator 
                        ID="RequiredPorte" 
                        runat="server" 
                        ControlToValidate="txtPorte" 
                        ErrorMessage="Preencha o porte corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 

                    Espécie: <br />
                   <asp:TextBox ID="txtEspecie" runat="server" placeholder="Preencha seu Nome Completo" Width="45%" CssClass="form-control" />
                   
                    <asp:RequiredFieldValidator 
                        ID="RequiredEspecie" 
                        runat="server" 
                        ControlToValidate="txtEspecie" 
                        ErrorMessage="Preencha a espécie corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 

                    Raça: <br />
                   <asp:TextBox ID="txtRaca" runat="server" placeholder="Preencha seu Nome Completo" Width="45%" CssClass="form-control" />
                   
                    <asp:RequiredFieldValidator 
                        ID="RequiredRaca" 
                        runat="server" 
                        ControlToValidate="txtRaca" 
                        ErrorMessage="Preencha a raça corretamente"
                        ForeColor="Red"
                    />
                    <br /> <br /> 

                    Idade: <br />
                   <asp:TextBox ID="txtIdade" runat="server" placeholder="Preencha seu Nome Completo" Width="45%" CssClass="form-control" />
                   <br /> <br /> 
                    Foto: <br />
                    <asp:TextBox ID="txtFoto" runat="server" Width="45%" CssClass="form-control" /> 
                    <br />
                    <asp:Button  ID="btnFoto" Text="Selecionar Arquivo" runat="server" CssClass="btn btn-default"  OnClick="btnFoto_Click"/>
                     <br />
                    <p>
                        <asp:Label ID="lblMensagemAnimal" runat="server" />
                    </p>

                    <asp:Button ID="btnCadastroAnimal" runat="server" Text="Cadastrar" CssClass="btn btn-success" OnClick="btnCadastroAnimal_Click" />
                    <a href="/default.aspx" class="btn btn-default"> Voltar</a>
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
