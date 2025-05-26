namespace WpfApp1.Models
{
  class Infracao
  {


    /*
* vamos receber esses dados
* ID_INFRACAO  
* NOME_MOTORISTA
* PLACA_VEICULO
* NUMERO_RASTREADOR
* * DATA
* VELOCIDADE
* LIMITE_VELOCIDADE
*/


    public int Id { get; set; }
    public string? Nome { get; set; }
    public string? Placa { get; set; }
    public required String numRastreador { get; set; }
    public DateTime Data { get; set; }
    public int Velocidade { get; set; }
    public int Limitevelocidade { get; set; }

  }
}
