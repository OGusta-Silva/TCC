using System.Windows;
namespace WpfApp1;


/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
  public MainWindow()
  {
    InitializeComponent();



    Loaded += MainWindow_Loaded;

    txtusuario.Focus();
  }

  private void MainWindow_Loaded(object sender, RoutedEventArgs e)
  {

  }

  private void Button_Click(object sender, RoutedEventArgs e)
  {
    string usuario = txtusuario.Text;
    string senha = password.Password.ToString();

    if (Usuario.Login(usuario, senha))
    {
      var home = new Home();
      home.Show();
      this.Close();
    }
    else
    {
      MessageBox.Show("Login Incorreto");
    }
  }
  private void Button_ClickSair(object sender, RoutedEventArgs e)
  {
    this.Close();
  }
}