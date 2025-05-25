using System.Windows;

namespace WpfApp1
{
  /// <summary>
  /// Lógica interna para InicioWindow.xaml
  /// </summary>
  public partial class InicioWindow : Window
  {
    public InicioWindow()


    {
      InitializeComponent();

  
    }

    private void Cadastro_Click(object sender, RoutedEventArgs e)
    {
      var home = new Home();
      home.Show();
      this.Close();
        }

    private void Sair_Click(object sender, RoutedEventArgs e)
    {
      if (MessageBox.Show("Deseja realmente sair?", "Sair", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
      {
        Application.Current.Shutdown();

      }
    }

    private void Listar_Click(object sender, RoutedEventArgs e)
    {
      var Infralist = new InfracaoListWindow();
      Infralist.Show();
      this.Close();
    }
  }

}
