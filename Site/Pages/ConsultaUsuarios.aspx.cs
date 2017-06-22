using DAL.Persistence;
using System;

namespace Site.Pages
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                UsuarioDAL uDAL = new UsuarioDAL();

                dgListaPessoa.DataSource = uDAL.Listar(); 
                dgListaPessoa.DataBind(); 

            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }

        }
    }
}