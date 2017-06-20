<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>

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
                    <h3 class="well">Cadastro de cliente</h3>
                    <br/>

                    Nome do Cliente: <br />
                   <asp:TextBox ID="txtNome" runat="server" placeholder="Nome Completo" Width="45%" CssClass="form-control" />
                   <br /> <br /> 

                   Endereço do Cliente: <br />
                   <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço do Cliente" Width="45%" CssClass="form-control" />
                   <br /> <br /> 

                   E-mail do Cliente: <br />
                   <asp:TextBox ID="txtEmail" runat="server" placeholder="E-mail do Cliente" Width="45%" CssClass="form-control" />
                   <br /> <br /> 
                </div>
            </div>
        </div>
    </form>
</body>
</html>
