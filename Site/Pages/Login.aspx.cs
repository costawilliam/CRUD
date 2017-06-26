using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Persistence;

namespace Site.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        public int usuarioLogado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                UsuarioDAL uDAL = new UsuarioDAL();

                GridView dgUsuarios = new GridView()
                {
                    DataSource = uDAL.Login(txtEmailLogin.Text, txtSenhaLogin.Text)
                };
                dgUsuarios.DataBind();
                
                if(dgUsuarios.Rows.Count > 0)
                {
                    GridViewRow row = dgUsuarios.Rows[0];
                    usuarioLogado = Convert.ToInt32(row.Cells[0].Text);
                    lblMensagemLogin.Text = "Usuario logou: " + usuarioLogado;
                }
                else
                {
                    lblMensagemLogin.Text = "Usuário ou senha incorretos, tente novamente.";
                }
            }
            catch (Exception ex)
            {
                lblMensagemLogin.Text =  ex.Message;
            }

        }
    }
}