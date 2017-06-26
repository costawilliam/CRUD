using DAL.Persistence;
using System;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class ConsultaAnimais : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AnimalDAL aDAL = new AnimalDAL();
                Login l = new Login();

                dgListaAnimais.DataSource = aDAL.Listar();
                dgListaAnimais.DataBind();
            }
            catch (Exception ex)
            {
                lblMensagemAnimaisDetalhes.Text = ex.Message;
            }
        }

        protected void dgListaAnimais_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Visualizar")
            {
                //TO DO - redirecionar usuário para uma nova janela que exiba os dados do animal
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = dgListaAnimais.Rows[index];
                int codigo = Convert.ToInt32(row.Cells[0].Text);
            }

            if (e.CommandName == "RegistraInteresse")
            {
                //TO DO
            }

            if (e.CommandName == "MarcarAdotado")
            {
                //TO DO
            }

        }

        protected void dgListaAnimais_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void dgListaAnimais_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

    }
}