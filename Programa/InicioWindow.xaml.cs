using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

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
      MainFrame.Navigate(new Home()); // ou "Cadastro", conforme seu nome final
    }

    private void Cadastro_Click(object sender, RoutedEventArgs e)
    {
      MainFrame.Navigate(new Home());
    }

    private void Listar_Click(object sender, RoutedEventArgs e)
    {
      MainFrame.Navigate(new InfracaoListWindow());
    }

    private void Sair_Click(object sender, RoutedEventArgs e)
    {
      Application.Current.Shutdown();
    }
  }
  
}
