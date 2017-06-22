<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaAnimais.aspx.cs" Inherits="Site.Pages.ConsultaAnimais" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consulta</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-1.9.1.min.js"> </script>
    <script src="Scripts/bootstrap.min.js"> </script>
<body>
    <form id="form1" runat="server">
 <div class="container">
            <div class="span10 offset1">
                <div class="row">
                    <h3 class="well">Consulta de Animais</h3>
                    <br/>

                    <asp:GridView ID="dgListaAnimais" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" 
                        onrowcommand="dgListaAnimais_RowCommand" onrowdeleting="dgListaAnimais_RowDeleting" onrowupdating="dgListaAnimais_RowUpdating">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Código" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Raca" HeaderText="Raça" />
                            <asp:BoundField DataField="Especie" HeaderText="Espécie" />
                            <asp:BoundField DataField="Porte" HeaderText="Porte" />
                            <asp:BoundField DataField="Idade" HeaderText="Idade" />
                            <asp:ButtonField ButtonType="Button" CommandName="Visualizar" Text="Visualizar">
                                    <ControlStyle CssClass="btn btn-success btn-xs col-lg-12" />
                            </asp:ButtonField>  
                            <asp:ButtonField ButtonType="Button" CommandName="RegistraInteresse" Text="Interessado">
                                    <ControlStyle CssClass="btn btn-warning btn-xs col-lg-12" />
                            </asp:ButtonField> 
                            <asp:ButtonField ButtonType="Button" CommandName="MarcarAdotado" Text="Adotado">
                                    <ControlStyle CssClass="btn btn-danger btn-xs col-lg-12 "/>
                            </asp:ButtonField>  
                                
                        </Columns>
                        <RowStyle CssClass="cursor-pointer" />

                    </asp:GridView>

                    <br /> <br /> 
                    <br /> <br /> 
                    <p>
                        <asp:Label ID="lblMensagemAnimaisDetalhes" runat="server" />
                    </p>
                    <a href="/default.aspx" class="btn btn-default"> Voltar</a>
                    <br />  
                </div>
            </div>
        </div>
    </form>
</body>
</html>
