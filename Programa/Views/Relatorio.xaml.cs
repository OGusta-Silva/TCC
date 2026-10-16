using System.Windows;
using Microsoft.Win32;
using WpfApp1.Models;
using WpfApp1.Data;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;

namespace WpfApp1.Views
{
  /// <summary>
  /// Lógica interna para Relatorio.xaml
  /// </summary>
  public partial class Relatorio : Window
  {
    // Guarda o último resultado gerado, pra poder exportar sem consultar o banco de novo.
    private List<Infracao>? _ultimoResultado;

    public Relatorio()
    {
      InitializeComponent();
    }

    private void BtnGerar_Click(object sender, RoutedEventArgs e)
    {
      if (dtFiltroInicio.SelectedDate == null || dtFiltroFim.SelectedDate == null)
      {
        MessageBox.Show("Selecione o período (De e Até) antes de gerar o relatório.");
        return;
      }

      if (dtFiltroInicio.SelectedDate > dtFiltroFim.SelectedDate)
      {
        MessageBox.Show("A data \"De\" não pode ser depois da data \"Até\".");
        return;
      }

      try
      {
        var dao = new InfracaoDAO();
        // limite: null -> sem LIMIT, traz todas as infrações do período escolhido.
        _ultimoResultado = dao.List(dtFiltroInicio.SelectedDate, dtFiltroFim.SelectedDate, null);

        dataGridRelatorio.ItemsSource = _ultimoResultado;
        txtInfoResultado.Text = $"{_ultimoResultado.Count} infração(ões) encontrada(s) no período.";
        BtnExportarPdf.IsEnabled = _ultimoResultado.Count > 0;
      }
      catch (Exception ex)
      {
        MessageBox.Show(ex.Message, "Erro ao gerar relatório", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private void BtnExportarPdf_Click(object sender, RoutedEventArgs e)
    {
      if (_ultimoResultado == null || _ultimoResultado.Count == 0)
      {
        MessageBox.Show("Gere o relatório antes de exportar.");
        return;
      }

      var dialog = new SaveFileDialog
      {
        Filter = "Arquivo PDF (*.pdf)|*.pdf",
        FileName = $"RelatorioInfracoes_{DateTime.Now:yyyyMMdd_HHmm}.pdf"
      };

      if (dialog.ShowDialog() != true)
        return;

      try
      {
        GerarPdf(_ultimoResultado, dtFiltroInicio.SelectedDate, dtFiltroFim.SelectedDate, dialog.FileName);
        MessageBox.Show("Relatório exportado com sucesso!");
      }
      catch (Exception ex)
      {
        MessageBox.Show("Erro ao exportar PDF: " + ex.Message, "Erro", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private static void GerarPdf(List<Infracao> infracoes, DateTime? dataInicio, DateTime? dataFim, string caminho)
    {
      Document.Create(container =>
      {
        container.Page(page =>
        {
          page.Margin(30);
          page.Size(PageSizes.A4);
          page.DefaultTextStyle(x => x.FontSize(10));

          page.Header().Column(col =>
          {
            col.Item().Text("Relatório de Infrações de Velocidade").FontSize(18).Bold();
            col.Item().PaddingTop(5).Text($"Período: {dataInicio:dd/MM/yyyy} até {dataFim:dd/MM/yyyy}");
            col.Item().Text($"Gerado em: {DateTime.Now:dd/MM/yyyy HH:mm}");
            col.Item().Text($"Total de infrações: {infracoes.Count}");
          });

          page.Content().PaddingTop(15).Table(table =>
          {
            table.ColumnsDefinition(columns =>
            {
              columns.ConstantColumn(30);
              columns.RelativeColumn(2);
              columns.RelativeColumn(1.5f);
              columns.RelativeColumn(2);
              columns.RelativeColumn(1.5f);
              columns.RelativeColumn(1);
              columns.RelativeColumn(1);
            });

            table.Header(header =>
            {
              header.Cell().Text("Id").Bold();
              header.Cell().Text("Nome").Bold();
              header.Cell().Text("Placa").Bold();
              header.Cell().Text("Rastreador").Bold();
              header.Cell().Text("Data").Bold();
              header.Cell().Text("Vel.").Bold();
              header.Cell().Text("Limite").Bold();
            });

            foreach (var infracao in infracoes)
            {
              table.Cell().Text(infracao.Id.ToString());
              table.Cell().Text(infracao.Nome ?? "-");
              table.Cell().Text(infracao.Placa ?? "-");
              table.Cell().Text(infracao.numRastreador);
              table.Cell().Text(infracao.Data.ToString("dd/MM/yyyy"));
              table.Cell().Text(infracao.Velocidade.ToString());
              table.Cell().Text(infracao.Limitevelocidade.ToString());
            }
          });

          page.Footer().AlignCenter().Text(x =>
          {
            x.CurrentPageNumber();
            x.Span(" / ");
            x.TotalPages();
          });
        });
      })
      .GeneratePdf(caminho);
    }

    private void Voltar_Click(object sender, RoutedEventArgs e)
    {
      var inicio = new InicioWindow();
      inicio.Show();
      this.Close();
    }
  }
}
