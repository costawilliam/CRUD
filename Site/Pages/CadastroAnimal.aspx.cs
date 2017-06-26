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
    public partial class CadastroAnimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastroAnimal_Click(object sender, EventArgs e)
        {
            try
            {
                Animal a = new Animal();
                a.Nome = txtNomeAnimal.Text.Trim();
                a.Porte = txtPorte.Text.Trim();
                a.Especie = txtEspecie.Text.Trim();
                a.Raca = txtRaca.Text.Trim();
                a.Idade = Convert.ToInt32(txtIdade.Text.Trim());
                a.Usuario_codigo = 1;

                AnimalDAL aDal = new AnimalDAL();

                aDal.Gravar(a);

                lblMensagemAnimal.Text = "Animal " + a.Nome + " cadastrada com sucesso!";


            }
            catch (Exception ex)
            {
                lblMensagemAnimal.Text = ex.Message;
            }
        }

        protected void btnFoto_Click(object sender, EventArgs e)
        {
            
        }
    }
}