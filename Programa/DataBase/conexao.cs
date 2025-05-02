using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace WpfApp1.DataBase
{
    internal class conexao
    {
        private static string host = "localhost";
        private static string port = "3306";
        private static string user = "root";
        private static string password = "MySql2019!";
        private static string dbname = "BancoDados";
        private static MySqlConnection connection;
        private static MySqlCommand command;

        public conexao()
        {
            try
            {
                connection = new MySqlConnection($"server={host};user={user};database={dbname};port={port};password={password}");

            }catch (Exception)
            {
                throw;
            }
        }
        public void Close()
        {
            connection.Close();
        }

        internal object Query()
        {
            throw new NotImplementedException();
        }
    }
}
