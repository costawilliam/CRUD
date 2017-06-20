using DAL.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class UsuarioDAL : Conexao
    {
        //Método para Gravar dados (INSERT)
        public void Gravar(Usuario u)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("insert into usuario(Nome,Endereco,Email, Senha) values(@v1, @v2,@v3,@v4)", Con);

                Cmd.Parameters.AddWithValue("@v1", u.Nome);
                Cmd.Parameters.AddWithValue("@v2", u.Endereco);
                Cmd.Parameters.AddWithValue("@v3", u.Email);
                Cmd.Parameters.AddWithValue("@v4", u.Senha);

                Cmd.ExecuteNonQuery();  
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao gravar usuário: " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método para Atualizar dados (UPDATE)
        public void Atualizar(Usuario u)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand ("update usuario set nome = @v1, endereco = @v2, email=@v3 where codigo = @v4", Con);

                Cmd.Parameters.AddWithValue("@v1", u.Nome);
                Cmd.Parameters.AddWithValue("@v2", u.Endereco);
                Cmd.Parameters.AddWithValue("@v3", u.Email);
                Cmd.Parameters.AddWithValue("@v4", u.Codigo);

                Cmd.ExecuteNonQuery();  
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao atualizar usuário:"  +ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método para excluir dados (DELETE)
        public void Excluir(int Codigo)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("delete from usuario where Codigo = @v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao excluir usuário:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public Usuario PesquisarPorCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("select * from usuario where Codigo = @v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Usuario u = null; //cria um ponteiro

                if (Dr.Read())
                {
                    u = new Usuario()
                    {
                        Codigo = Convert.ToInt32(Dr["Codigo"]),
                        Nome = Convert.ToString(Dr["Nome"]),
                        Endereco = Convert.ToString(Dr["Endereco"]),
                        Email = Convert.ToString(Dr["Email"])
                    };
                }
                return u;

                
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao pesquisar usuário:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método listar pessoas (SELECT - sem WHERE)
        public List<Usuario> Listar()
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("select * from Usuario", Con);

                Dr = Cmd.ExecuteReader(); // Executa consulta e lê os registros obtidos

                List<Usuario> lista = new List<Usuario>(); //cria lista vazia

                while (Dr.Read())
                {
                    Usuario u = new Usuario()
                    {
                        Codigo = Convert.ToInt32(Dr["Codigo"]),
                        Nome = Convert.ToString(Dr["Nome"]),
                        Endereco = Convert.ToString(Dr["Endereco"]),
                        Email = Convert.ToString(Dr["Email"])
                    };
                    lista.Add(u);
                }
                return lista;

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar usuários:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}