using MySql.Data.MySqlClient;
using System.Data;

namespace WpfApp1.DataBase
{
  internal class Conexao
  {
    private static readonly string host = "localhost";
    private static readonly string port = "3306";
    private static readonly string user = "root";
    private static readonly string password = "MySql2019!";
    private static readonly string dbname = "BancoDados";
    private static MySqlConnection connection;


    public Conexao()
    {
      try
      {
        connection = new MySqlConnection($"server={host};user={user};database={dbname};port={port};password={password}");
      }
      catch (Exception)
      {
        throw;
      }
    }
    public MySqlCommand Query()
    {
      try
      {
        if (connection.State != ConnectionState.Open)
          connection.Open();

        MySqlCommand cmd = connection.CreateCommand();
        cmd.CommandType = CommandType.Text;
        return cmd;
      }
      catch (Exception)
      {
        throw;
      }
    }
    public void Close()
    {
      if (connection.State == ConnectionState.Open)
        connection.Close();
    }
  }
}