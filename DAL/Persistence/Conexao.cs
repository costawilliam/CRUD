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
                Con = new SqlConnection("Data Source=6884efda-c112-4f4d-abbc-a796013a0339.sqlserver.sequelizer.com;Initial Catalog=db6884efdac1124f4dabbca796013a0339;Persist Security Info=True;User ID=lmjwtbzohgkiqnsw;Password=2XSmCn2Y5jU3ddzNgqF7dSYerjGqerHFvxX855Gj6iAH4QvStymkHVuh7M4sMJTL");
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
