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
                Con = new SqlConnection("Data Source=b0313095-5cea-43b4-9981-a79a001165fd.sqlserver.sequelizer.com;Initial Catalog=dbb03130955cea43b49981a79a001165fd;Persist Security Info=True;User ID=covcyvsbvehyweyl;Password=***********");
               // Con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=CRUD;Persist Security Info=True;User ID=sa;Password=*******");
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
