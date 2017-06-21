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
