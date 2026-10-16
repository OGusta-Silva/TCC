using MySql.Data.MySqlClient;
using WpfApp1.Interface;
using WpfApp1.Models;

namespace WpfApp1.Data
{

  class InfracaoDAO : IDAO<Infracao>
  {
    private static Conexao? conn;

    public InfracaoDAO()
    {
      conn = new Conexao();
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

    public void Update(Infracao t)
    {
      try
      {
        MySqlCommand cmd = conn.Query();
        cmd.CommandText = @"
                    UPDATE INFRACAO SET
                        NOME_MOTORISTA = @NOME,
                        PLACA_VEICULO = @PLACA,
                        NUMERO_RASTREADOR = @RASTREADOR,
                        DATA = @DATA,
                        VELOCIDADE = @VELOCIDADE,
                        LIMITE_VELOCIDADE = @LIMITE
                    WHERE ID_INFRACAO = @ID";

        cmd.Parameters.AddWithValue("@NOME", t.Nome);
        cmd.Parameters.AddWithValue("@PLACA", t.Placa);
        cmd.Parameters.AddWithValue("@RASTREADOR", t.numRastreador);
        cmd.Parameters.AddWithValue("@DATA", t.Data.ToString("yyyy-MM-dd"));
        cmd.Parameters.AddWithValue("@VELOCIDADE", t.Velocidade);
        cmd.Parameters.AddWithValue("@LIMITE", t.Limitevelocidade);
        cmd.Parameters.AddWithValue("@ID", t.Id);

        cmd.ExecuteNonQuery();
      }
      catch (Exception e)
      {
        throw new Exception("Erro ao atualizar infração: " + e.Message, e);
      }
      finally
      {
        conn?.Close();
      }
    }

    public void Delete(Infracao t)
    {
      try
      {
        MySqlCommand cmd = conn.Query();
        cmd.CommandText = "DELETE FROM INFRACAO WHERE ID_INFRACAO = @ID";
        cmd.Parameters.AddWithValue("@ID", t.Id);

        cmd.ExecuteNonQuery();
      }
      catch (Exception e)
      {
        throw new Exception("Erro ao excluir infração: " + e.Message, e);
      }
      finally
      {
        conn?.Close();
      }
    }

    public Infracao GetbyId(int id)
    {
      try
      {
        MySqlCommand cmd = conn.Query();
        cmd.CommandText = "SELECT * FROM INFRACAO WHERE ID_INFRACAO = @ID";
        cmd.Parameters.AddWithValue("@ID", id);

        using MySqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
          return LerInfracao(reader);
        }

        throw new Exception($"Infração com Id {id} não encontrada.");
      }
      catch (Exception e)
      {
        throw new Exception("Erro ao buscar infração: " + e.Message, e);
      }
      finally
      {
        conn?.Close();
      }
    }

    // Mantido para satisfazer a interface IDAO<T>: lista sem filtro, com o limite padrão.
    public List<Infracao> List()
    {
      return List(null, null, 50);
    }

    // Lista com filtro opcional por período (DataInicio/DataFim) e um limite de registros exibidos.
    public List<Infracao> List(DateTime? dataInicio, DateTime? dataFim, int limite = 50)
    {
      try
      {
        List<Infracao> list = new List<Infracao>();

        // LIMIT vai direto no texto (não como parâmetro): "limite" é sempre um valor
        // definido no código (nunca digitado pelo usuário), então não há risco de injection,
        // e evita um bug conhecido de alguns drivers MySQL com parâmetro dentro de LIMIT.
        MySqlCommand cmd = conn.Query();
        cmd.CommandText = $@"
                    SELECT * FROM INFRACAO
                    WHERE (@DATA_INICIO IS NULL OR DATA >= @DATA_INICIO)
                      AND (@DATA_FIM IS NULL OR DATA <= @DATA_FIM)
                    ORDER BY DATA DESC
                    LIMIT {limite}";

        cmd.Parameters.AddWithValue("@DATA_INICIO", (object?)dataInicio?.ToString("yyyy-MM-dd") ?? DBNull.Value);
        cmd.Parameters.AddWithValue("@DATA_FIM", (object?)dataFim?.ToString("yyyy-MM-dd") ?? DBNull.Value);

        //reader vai ler o que retornar do select
        using MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
          list.Add(LerInfracao(reader));
        }
        return list;

      }
      catch (Exception)
      {
        throw;
      }
      finally
      {
        conn?.Close();
      }
    }

    // Monta um Infracao a partir da linha atual do reader (evita repetir os mesmos campos em List/GetbyId).
    private static Infracao LerInfracao(MySqlDataReader reader)
    {
      return new Infracao
      {
        Id = reader.GetInt32("ID_INFRACAO"),
        Nome = reader["NOME_MOTORISTA"] as string,
        Placa = reader.GetString("PLACA_VEICULO"),
        numRastreador = reader.GetString("NUMERO_RASTREADOR"),
        Data = reader.GetDateTime("DATA"),
        Velocidade = (int)reader.GetDouble("VELOCIDADE"),
        Limitevelocidade = (int)reader.GetDouble("LIMITE_VELOCIDADE")
      };
    }
  }
}
