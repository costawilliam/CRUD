using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;
using System.IO;

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
                byte[] imageBytes;

               Animal a = new Animal();
                AnimalDAL aDal = new AnimalDAL();
                a.Nome = txtNomeAnimal.Text.Trim();
                a.Porte = txtPorte.Text.Trim();
                a.Especie = txtEspecie.Text.Trim();
                a.Raca = txtRaca.Text.Trim();
                a.Idade = Convert.ToInt32(txtIdade.Text.Trim());
                a.Usuario_codigo = 1;

                if (meuArquivo.PostedFile == null || string.IsNullOrEmpty(meuArquivo.PostedFile.FileName) || meuArquivo.PostedFile.InputStream == null)
                {
                    aDal.Gravar(a);
                   
                }
                else
                {
                    string extensao = Path.GetExtension(meuArquivo.PostedFile.FileName).ToLower();
                    string tipoArquivo = null;

                    switch (extensao)
                    {
                        case ".gif":
                            tipoArquivo = "image/gif";
                            break;
                        case ".jpg":
                        case ".jpeg":
                        case ".jpe":
                            tipoArquivo = "image/jpeg";
                            break;
                        default:
                            lblMensagemAnimal.Text = "Erro - tipo de arquivo inválido";
                            return;
                    }

                    imageBytes = new byte[meuArquivo.PostedFile.InputStream.Length + 1];
                    meuArquivo.PostedFile.InputStream.Read(imageBytes, 0, imageBytes.Length);
                    a.Imagem = imageBytes;
                    a.Imagem_tipo = tipoArquivo;
                    aDal.GravarComFoto(a);
                    
                }

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