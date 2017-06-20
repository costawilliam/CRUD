using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

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
                Pessoa p = new Pessoa();

                p.Nome = txtNome.Text.Trim();
                p.Endereco = txtEndereco.Text.Trim();
                p.Email = txtEmail.Text.Trim();

                PessoaDAL pDal = new PessoaDAL();

                pDal.Gravar(p);

                lblMensagem.Text = "Pessoa " + p.Nome + " cadastrada com sucesso!";
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }
        }


    }
}