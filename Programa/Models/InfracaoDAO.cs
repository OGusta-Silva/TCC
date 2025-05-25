using MySql.Data.MySqlClient;
using WpfApp1.DataBase;
using WpfApp1.Interface;


namespace WpfApp1.Models

{

  class InfracaoDAO : IDAO<Infracao>
  {
    private static Conexao? conn;

    public InfracaoDAO()
    {
      conn = new Conexao();
    }

    public void Delete(Infracao t)
    {
      throw new NotImplementedException();
    }

    public Infracao GetbyId(int id)
    {
      throw new NotImplementedException();
    }

    public void Isert(Infracao t)
    {
      try
      {
        MySqlCommand cmd = conn.Query();
        cmd.CommandText = @"
                    INSERT INTO INFRACAO 
                    (NOME_MOTORISTA, PLACA_VEICULO, NUMERO_RASTREADOR, DATA, VELOCIDADE, LIMITE_VELOCIDADE)
                    VALUES
                    (@NOME, @PLACA, @RASTREADOR, @DATA, @VELOCIDADE, @LIMITE)";

        cmd.Parameters.AddWithValue("@NOME", t.Nome);
        cmd.Parameters.AddWithValue("@PLACA", t.Placa);
        cmd.Parameters.AddWithValue("@RASTREADOR", t.numRastreador);
        cmd.Parameters.AddWithValue("@DATA", t.Data.ToString("yyyy-MM-dd"));
        cmd.Parameters.AddWithValue("@VELOCIDADE", t.Velocidade);
        cmd.Parameters.AddWithValue("@LIMITE", t.Limitevelocidade);

        cmd.ExecuteNonQuery();
      }
      catch (Exception e)
      {
        throw new Exception("Erro ao inserir infração: " + e.Message, e);
      }
      finally
      {
        conn?.Close();
      }
    }
    public List<Infracao> List()
    {
      try
      {
        List<Infracao> list = new List<Infracao>();

        var query = conn.Query();
        query.CommandText = "SELECT * FROM INFRACAO";
        
        //reader vai ler o quue retornoar do selec
        MySqlDataReader reader = query.ExecuteReader();
        while (reader.Read())
        {
          list.Add(new Infracao() { }); 
          IDAO = reader.GetInt32(ID)


          
          

        }

      }
      catch (Exception e) {
        throw e;
      }
      finally{

        conn.Close();
      }
    }

    public void Update(Infracao t)
    {
      throw new NotImplementedException();
    }
  }
}
