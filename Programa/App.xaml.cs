using System.Windows;
using QuestPDF.Infrastructure;

namespace WpfApp1;

/// <summary>
/// Interaction logic for App.xaml
/// </summary>
public partial class App : Application
{
  public App()
  {
    // Licença gratuita do QuestPDF (projetos de estudante/pequeno porte se enquadram).
    QuestPDF.Settings.License = LicenseType.Community;
  }
}

