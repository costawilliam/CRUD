using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

// to do Add campo para senha
namespace Site.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastroCliente_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario u = new Usuario();

                u.Nome = txtNome.Text.Trim();
                u.Endereco = txtEndereco.Text.Trim();
                u.Email = txtEmail.Text.Trim();
                u.Senha = txtSenha.Text.Trim();

                UsuarioDAL uDal = new UsuarioDAL();

                uDal.Gravar(u);

                lblMensagem.Text = "Usuario " + u.Nome + " cadastrada com sucesso!";
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }
        }


    }
}