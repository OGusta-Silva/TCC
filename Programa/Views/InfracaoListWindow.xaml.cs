using System.Windows;
using WpfApp1.Models;
using WpfApp1.Data;

namespace WpfApp1.Views
{
  /// <summary>
  /// Lógica interna para InfracaoListWindow.xaml
  /// </summary>
  public partial class InfracaoListWindow : Window
  {
    // Quantidade máxima de infrações exibidas na lista de cada vez.
    private const int LimiteRegistros = 50;

    public InfracaoListWindow()
    {
      InitializeComponent();
      Loaded += InfracaoListWindow_Loaded;
    }

    private void InfracaoListWindow_Loaded(object sender, RoutedEventArgs e)
    {
      LoadDataGrid();
    }

    private void LoadDataGrid()
    {
      try
      {
        var dao = new InfracaoDAO();
        var lista = dao.List(dtFiltroInicio.SelectedDate, dtFiltroFim.SelectedDate, LimiteRegistros);
        dataGridInfracoes.ItemsSource = lista;

        txtInfoLimite.Text = lista.Count >= LimiteRegistros
          ? $"Mostrando os {LimiteRegistros} cadastros mais recentes"
          : $"Mostrando {lista.Count} cadastro(s)";
      }
      catch (Exception ex)
      {
        MessageBox.Show(ex.Message, "ecxeção", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private void BtnFiltrar_Click(object sender, RoutedEventArgs e)
    {
      LoadDataGrid();
    }

    private void BtnLimparFiltro_Click(object sender, RoutedEventArgs e)
    {
      dtFiltroInicio.SelectedDate = null;
      dtFiltroFim.SelectedDate = null;
      LoadDataGrid();
    }

    private void BtnEditar_Click(object sender, RoutedEventArgs e)
    {
      if ((sender as FrameworkElement)?.DataContext is not Infracao infracao)
        return;

      var home = new Home(infracao);
      home.Show();
      this.Close();
    }

    private void BtnExcluir_Click(object sender, RoutedEventArgs e)
    {
      if ((sender as FrameworkElement)?.DataContext is not Infracao infracao)
        return;

      var resposta = MessageBox.Show(
        $"Excluir a infração da placa \"{infracao.Placa}\"?",
        "Confirmar exclusão",
        MessageBoxButton.YesNo,
        MessageBoxImage.Warning);

      if (resposta != MessageBoxResult.Yes)
        return;

      try
      {
        var dao = new InfracaoDAO();
        dao.Delete(infracao);
        LoadDataGrid();
      }
      catch (Exception ex)
      {
        MessageBox.Show(ex.Message, "Erro ao excluir", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {
      var inicio = new InicioWindow();
      inicio.Show();
      this.Close();
    }
  }
}
