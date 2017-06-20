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
                Con = new SqlConnection("Data Source=COMPUTADOR\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True");
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
