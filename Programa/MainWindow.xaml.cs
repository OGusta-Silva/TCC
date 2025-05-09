using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp1.DataBase;
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
  private void Button_ClickSair(object sender, RoutedEventArgs e) { 
    this.Close();
  }
  }