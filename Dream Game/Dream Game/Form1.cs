using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Dream_Game
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void textBoxTitulo_TextChanged(object sender, EventArgs e)
        {

        }

        private void buttonCadastrar_Click(object sender, EventArgs e)
        {
            //DefIna sua string de conexão com o banco
            string conexaoString = "Server=localhost; Port=3306; Database=bd_Dream_Game; Uid=root; Pwd=;";

            //defina a inserção de registro no BD

            string query = "INSERT INTO tb_jogos (Titulo, Avaliacao, Tamanho, Descricao, Valor, Desenvolvedor, Genero) VALUES (@Titulo, @Avaliacao, @Tamanho, @Descricao, @Valor, @Desenvolvedor, @Genero)";

            // Crie uma conexão com o BD

            using (MySqlConnection conexao = new MySqlConnection(conexaoString))
            {
                try
                {
                    //Abre a conexão
                    conexao.Open();

                    //Crie o comando SQL
                    using (MySqlCommand comando = new MySqlCommand(query, conexao))
                    {
                        //Adicionar os parâmetros com os valores dos TexBox
                        comando.Parameters.AddWithValue("@Titulo", textBoxTitulo.Text);
                        comando.Parameters.AddWithValue("@Avaliacao", comboBoxAvaliacao.Text);
                        comando.Parameters.AddWithValue("@Tamanho", maskedTextTamanho.Text);
                        comando.Parameters.AddWithValue("@Descricao", richTextBoxDescricao.Text);
                        comando.Parameters.AddWithValue("@Valor", maskedTextValor.Text);
                        comando.Parameters.AddWithValue("@Desenvolvedor", textBoxDesenvolvedor.Text);
                        comando.Parameters.AddWithValue("@Genero", comboBoxGenero.Text);
                        // Executa o comando de inserção
                        comando.ExecuteNonQuery();
                        MessageBox.Show("Dados inseridos com sucesso!");
                    }
                }
                catch (Exception ex)
                {
                    // em Caso de erro, exiba mensagem do erro
                    MessageBox.Show("Erro: " + ex.Message);
                }

            }
        }
    }
}
