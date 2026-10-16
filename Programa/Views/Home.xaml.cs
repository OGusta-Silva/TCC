using System.Windows;
using System.Windows.Controls;
using WpfApp1.Models;
using WpfApp1.Data;

namespace WpfApp1.Views
{
  /// <summary>
  /// Lógica interna para Home.xaml
  /// </summary>
  public partial class Home : Window
  {
    // Quando null, a tela está em modo de novo cadastro.
    // Quando preenchida, a tela está editando essa infração (veio da listagem).
    private Infracao? _infracaoEmEdicao;

    public Home()
    {
      InitializeComponent();
    }

    // Construtor usado pela listagem para editar uma infração já existente.
    public Home(Infracao infracaoParaEditar)
    {
      InitializeComponent();

      _infracaoEmEdicao = infracaoParaEditar;

      txtTitulo.Text = "Editar Infração";
      BtnSalvar.Content = "Atualizar";

      txtBoxNome.Text = infracaoParaEditar.Nome;
      txtBoxPlaca.Text = infracaoParaEditar.Placa;
      tBoxnumero.Text = infracaoParaEditar.numRastreador;
      dtPickerData.SelectedDate = infracaoParaEditar.Data;
      txtBoxVelocidade.Text = infracaoParaEditar.Velocidade.ToString();
      txtBoxLimiteVelocidade.Text = infracaoParaEditar.Limitevelocidade.ToString();
    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {

    }
    //botao de salvar informacoes
    private void BtnSalvar_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        if (dtPickerData.SelectedDate == null)
        {
          MessageBox.Show("Selecione a data da infração.");
          return;
        }

        Infracao infracao = new Infracao
        {
          Id = _infracaoEmEdicao?.Id ?? 0,
          Nome = txtBoxNome.Text,
          Placa = txtBoxPlaca.Text,
          numRastreador = tBoxnumero.Text,
          Data = dtPickerData.SelectedDate.Value,
          Velocidade = (int)Convert.ToDouble(txtBoxVelocidade.Text),
          Limitevelocidade = (int)Convert.ToDouble(txtBoxLimiteVelocidade.Text)
        };

        InfracaoDAO infracaoDAO = new InfracaoDAO();

        if (_infracaoEmEdicao != null)
        {
          infracaoDAO.Update(infracao);
          MessageBox.Show("Infração atualizada!");

          // Volta pra listagem já com o dado atualizado.
          var lista = new InfracaoListWindow();
          lista.Show();
          this.Close();
          return;
        }

        infracaoDAO.Isert(infracao);
        MessageBox.Show("Cadastro Realizado!");

        // Limpa os campos pra permitir cadastrar outra infração.
        txtBoxNome.Text = "";
        txtBoxPlaca.Text = "";
        tBoxnumero.Text = "";
        dtPickerData.SelectedDate = null;
        txtBoxVelocidade.Text = "";
        txtBoxLimiteVelocidade.Text = "";
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

    private void Voltar_Click(object sender, RoutedEventArgs e)
    {
      var inicio = new InicioWindow();
      inicio.Show();
      this.Close();
    }
  }


}
