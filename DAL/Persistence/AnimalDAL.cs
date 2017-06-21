using DAL.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class AnimalDAL : Conexao
    {
        public void Gravar(Animal a)
        {
            try
            {
                //Abrir a conexão:
                AbrirConexao();

                //SqlCommand
                Cmd = new SqlCommand("insert into animal(Nome, Porte, Especie, Raca, Idade, Usuario_codigo) values(@v1, @v2, @v3, @v4, @v5, @v6)", Con);

                //Associa os valores ao SqlCommand
                Cmd.Parameters.AddWithValue("@v1", a.Nome);
                Cmd.Parameters.AddWithValue("@v2", a.Porte);
                Cmd.Parameters.AddWithValue("@v3", a.Especie);
                Cmd.Parameters.AddWithValue("@v4", a.Raca);
                Cmd.Parameters.AddWithValue("@v5", a.Idade);
                Cmd.Parameters.AddWithValue("@v6", a.Usuario_codigo);

                // Executa a query
                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao gravar Animal: " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Atualizar(Animal a)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("update animal set nome = @v1, porte = @v2, especie=@v3, raca=@v4, idade=@v5 where codigo = @v6", Con);

                Cmd.Parameters.AddWithValue("@v1", a.Nome);
                Cmd.Parameters.AddWithValue("@v2", a.Porte);
                Cmd.Parameters.AddWithValue("@v3", a.Especie);
                Cmd.Parameters.AddWithValue("@v4", a.Raca);
                Cmd.Parameters.AddWithValue("@v5", a.Idade);
                Cmd.Parameters.AddWithValue("@v6", a.Codigo);


                Cmd.ExecuteNonQuery();  // Executa a query
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao atualizar animal:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        // Marca animal como adotado
        public void MarcarAdotado(int codigo)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("update animal set adotado = 1 where codigo = @v1", Con);

                Cmd.Parameters.AddWithValue("@v1", codigo);           

                Cmd.ExecuteNonQuery();  
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao atualizar animal:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Excluir(int Codigo)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("delete from animal where Codigo = @v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao excluir animal:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public Animal PesquisarPorCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("select * from animal where Codigo = @v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Animal a = null; //cria um ponteiro
                //Nome, Porte, Especie, Racao, Idade, Usuario_codigo
                if (Dr.Read())
                {
                    a = new Animal()
                    {
                        Codigo = Convert.ToInt32(Dr["Codigo"]),
                        Nome = Convert.ToString(Dr["Nome"]),
                        Porte = Convert.ToString(Dr["Porte"]),
                        Especie = Convert.ToString(Dr["Especie"]),
                        Raca = Convert.ToString(Dr["Raca"]),
                        Idade = Convert.ToInt32(Dr["Idade"]),
                        Usuario_codigo = Convert.ToInt32(Dr["Usuario_codigo"])

                    };
                }
                return a;


            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao pesquisar animal:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }


        public List<Animal> Listar()
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("select * from Animal", Con);

                Dr = Cmd.ExecuteReader(); // Executa consulta e lê os registros obtidos

                List<Animal> lista = new List<Animal>(); //cria lista vazia

                while (Dr.Read())
                {
                    Animal a = new Animal()
                    {
                        Codigo = Convert.ToInt32(Dr["Codigo"]),
                        Nome = Convert.ToString(Dr["Nome"]),
                        Porte = Convert.ToString(Dr["Porte"]),
                        Especie = Convert.ToString(Dr["Especie"]),
                        Raca = Convert.ToString(Dr["Raca"]),
                        Idade = Convert.ToInt32(Dr["Idade"]),
                        Usuario_codigo = Convert.ToInt32(Dr["Usuario_codigo"])
                    };
                    lista.Add(a);
                }
                return lista;

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar animais:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }


    }
}
