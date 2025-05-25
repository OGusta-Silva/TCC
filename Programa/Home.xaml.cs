using System.Windows;
using System.Windows.Controls;
using WpfApp1.Models;

namespace WpfApp1
{
  /// <summary>
  /// Lógica interna para Home.xaml
  /// </summary>
  public partial class Home : Window
  {
    public Home()
    {
      InitializeComponent();

    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {

    }
    //botao de salvar informacoes
    private void BtnSalvar_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        Infracao infracao = new Infracao
        {
          Nome = txtBoxNome.Text,
          Placa = txtBoxPlaca.Text,
          numRastreador = (int)Convert.ToDouble(tBoxnumero.Text),
          Data = DateTime.Parse(txtBoxData.Text),
          Velocidade = (int)Convert.ToDouble(txtBoxVelocidade.Text),
          Limitevelocidade = (int)Convert.ToDouble(txtBoxLimiteVelocidade.Text)
        };

        // Aqui você pode chamar um método para salvar no banco, por exemplo: infracaoDAO.Salvar(infracao);

        MessageBox.Show("Cadastro Realizado!");

        // Limpa os campos
        txtBoxNome.Text = "";
        txtBoxPlaca.Text = "";
        tBoxnumero.Text = "";
        txtBoxData.Text = "";
        txtBoxVelocidade.Text = "";
        txtBoxLimiteVelocidade.Text = "";

        InfracaoDAO infracaoDAO = new InfracaoDAO();
        infracaoDAO.Isert(infracao);
      }
      catch (Exception ex)
      {
        MessageBox.Show("Erro ao salvar a infração: " + ex.Message);
      }
    }
    //botao do menu que navega entre as paginas
    private void abrirlistagem_Click(object sender, RoutedEventArgs e)
    {
      var infra = new InfracaoListWindow();
      infra.Show();
      this.Close();

    }
    private void MnuSair_Click(object sender, RoutedEventArgs e)
    {
      if (MessageBox.Show("Deseja realmente sair?", "Sair", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
      {
        Application.Current.Shutdown();

      }

    }

    private void MenuItem_Click(object sender, RoutedEventArgs e)
    {

    }
  }


}
