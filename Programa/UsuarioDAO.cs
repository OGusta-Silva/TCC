
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Tls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System;

namespace WpfApp1
{
    internal class UsuarioDAO : AbstracDAO<Usuario>
    {
        public Usuario GetByUsuario(string usuarioNome, string senha)
        {
            try
            {
                MySqlCommand query = conn.Query();
                query.CommandText = "SELECT * FROM USUARIO WHERE LOGIN = @LOGIN AND SENHA = @SENHA";
                query.Parameters.AddWithValue("@LOGIN", usuarioNome);
                query.Parameters.AddWithValue("@SENHA", senha);

                MySqlDataReader reader = query.ExecuteReader();

                Usuario usuario = null;

                if (reader.Read())
                {
                    usuario = Usuario.GetInstance();
                    usuario.Id = reader.GetInt32("ID_USUARIO"); // substitua "ID" se a coluna for diferente
                    usuario.UsuarioNome = reader.GetString("LOGIN");
                    usuario.Senha = reader.GetString("SENHA");
                }

                reader.Close();
                return usuario;
            }
            catch (Exception e)
            {
                throw new Exception("Erro ao buscar o usuário: " + e.Message, e);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}

