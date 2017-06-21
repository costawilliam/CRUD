using System;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class Conexao
    {
        //Atributos:
        protected SqlConnection Con;
        protected SqlCommand Cmd;
        protected SqlDataReader Dr;

        //Método - Abrir Conexao
        protected void AbrirConexao()
        {
            try
            {
                //Con = new SqlConnection("Data Source= 6884efda-c112-4f4d-abbc-a796013a0339.sqlserver.sequelizer.com;Initial Catalog=db6884efdac1124f4dabbca796013a0339;User ID=lmjwtbzohgkiqnsw;Password=oFh68xA8i3dMPnbqRLbnGYipD2fXtd7k8fZawWBedwTY7r3eoiJbDEsww2zfrKNf");
                Con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=CRUD;Persist Security Info=True;User ID=sa;Password=_43690");

                Con.Open();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        //Método - Fechar Conexao
        protected void FecharConexao()
        {
            try
            {
                Con.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
