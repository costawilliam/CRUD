using DAL.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class PessoaDAL : Conexao
    {
        //Método para Gravar dados (INSERT)
        public void Gravar(Pessoa p)
        {
            try
            {
                //Abrir a conexão:
                AbrirConexao();

                //SqlCommand
                Cmd = new SqlCommand("insert into pessoa(Nome,Endereco,Email) values(@v1, @v2,@v3)", Con);

                //Associa os valores ao SqlCommand
                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);

                // Executa a query
                Cmd.ExecuteNonQuery();  
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao gravar pessoa: " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método para Atualizar dados (UPDATE)
        public void Atualizar(Pessoa p)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand ("update pessoa set nome = @v1, endereco = @v2, email=@v3 where codigo = @v4", Con);

                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);
                Cmd.Parameters.AddWithValue("@v4", p.Codigo);

                Cmd.ExecuteNonQuery();  // Executa a query
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao atualizar pessoa:"  +ex.Message);
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

                Cmd = new SqlCommand("delete from pessoa where Codigo = @v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao excluir pessoa:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public Pessoa PesquisarPorCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("select * from pessoa where Codigo = @v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Pessoa p = null; //cria um ponteiro

                if (Dr.Read())
                {
                    p = new Pessoa()
                    {
                        Codigo = Convert.ToInt32(Dr["Codigo"]),
                        Nome = Convert.ToString(Dr["Nome"]),
                        Endereco = Convert.ToString(Dr["Endereco"]),
                        Email = Convert.ToString(Dr["Email"])
                    };
                }
                return p;

                
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao pesquisar pessoa:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método listar pessoas (SELECT - sem WHERE)
        public List<Pessoa> Listar()
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("select * from Pessoa", Con);

                Dr = Cmd.ExecuteReader(); // Executa consulta e lê os registros obtidos

                List<Pessoa> lista = new List<Pessoa>(); //cria lista vazia

                while (Dr.Read())
                {
                    Pessoa p = new Pessoa()
                    {
                        Codigo = Convert.ToInt32(Dr["Codigo"]),
                        Nome = Convert.ToString(Dr["Nome"]),
                        Endereco = Convert.ToString(Dr["Endereco"]),
                        Email = Convert.ToString(Dr["Email"])
                    };
                    lista.Add(p);
                }
                return lista;

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar pessoas:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}


//Regras de Negócio da Aplicação - Consultas (insert,select, update e delete)
