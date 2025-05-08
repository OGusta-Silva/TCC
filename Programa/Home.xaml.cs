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
            MessageBox.Show("teste");
            MessageBox.Show("teste 2");
        }

    private void BtnSalvar_Click(object sender, RoutedEventArgs e)
    {
      String nome, placa, numeroRastreador, data, velocidade, limiteVelocidade;
      nome = txtBoxNome.Text;
      placa = txtBoxPlaca.Text;
      numeroRastreador = txtBoxnumero.Text;
      data = txtBoxData.Text;
      velocidade = txtBoxVelocidade.Text;
      limiteVelocidade = txtBoxLimiteVelocidade.Text;


      txtBoxNome.Text ="";
      txtBoxPlaca.Text = "";
      txtBoxnumero.Text = "";
      txtBoxData.Text = "";
      txtBoxVelocidade.Text = "";
      txtBoxLimiteVelocidade.Text = "";


    }
  }
}
