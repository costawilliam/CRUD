<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroAnimal.aspx.cs" Inherits="Site.Pages.Cadastro" %>

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
                  
                    <p>
                        <asp:Label ID="lblMensagemAnimal" runat="server" />
                    </p>

                    <asp:Button ID="btnCadastroAnimal" runat="server" Text="Cadastrar" CssClass="btn btn-success" OnClick="btnCadastroAnimal_Click" />
                    <a href="/default.aspx" class="btn btn-default"> Voltar</a>
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
