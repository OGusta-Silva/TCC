using System.Windows;
using WpfApp1.Models;

namespace WpfApp1
{
  /// <summary>
  /// Lógica interna para InfracaoListWindow.xaml
  /// </summary>
  public partial class InfracaoListWindow : Window
  {
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
        dataGridInfracoes.ItemsSource = dao.List();
      
      }
      catch (Exception ex)
      {
        MessageBox.Show(ex.Message, "ecxeção", MessageBoxButton.OK, MessageBoxImage.Error);
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
