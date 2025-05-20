using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
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
      MainFrame.Navigate(new Home()); // Página padrão ao entrar
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
    private void MnuList_Click(object sender, EventArgs e)
    {
      MainFrame.Navigate(new PInfracaoList());

    }
    private void MnuSair_Click(object sender, RoutedEventArgs e)
    {
      if (MessageBox.Show("Deseja realmente sair?", "Sair", MessageBoxButton.YesNo) == MessageBoxResult.Yes) { 
        Application.Current.Shutdown();

    }
    }


  } 


}
