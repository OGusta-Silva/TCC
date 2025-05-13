
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Tls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System;
using static System.Runtime.InteropServices.JavaScript.JSType;
using System.Runtime.Intrinsics.X86;
using System.Text.Unicode;
using System.Windows.Markup;
using WpfApp1.DataBase;

namespace WpfApp1
{
  internal class UsuarioDAO : AbstracDAO<Usuario>
  {
    public Usuario? GetByUsuario(string usuarioNome, string senha)
    {
      Conexao conexao = new Conexao(); // instancia

      try
      {
        MySqlCommand query = conexao.Query();
        query.CommandText = "SELECT * FROM USUARIO WHERE LOGIN = @LOGIN AND SENHA = @SENHA";
        query.Parameters.AddWithValue("@LOGIN", usuarioNome);
        query.Parameters.AddWithValue("@SENHA", senha);

        Usuario? usuario = null;

        MySqlDataReader reader = query.ExecuteReader();
        try
        {
          if (reader.Read())
          {
            usuario = Usuario.GetInstance();
            usuario.UsuarioNome = reader.GetString("LOGIN");
            usuario.Senha = reader.GetString("SENHA");
          }
        }
        finally
        {
          reader.Close();
        }

        return usuario;
      }
      catch (Exception e)
      {
        throw new Exception("Erro ao buscar o usuário: " + e.Message, e);
      }
      finally
      {
        conexao.Close(); // fecha corretamente
      }
    }
  }
}

