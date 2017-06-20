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