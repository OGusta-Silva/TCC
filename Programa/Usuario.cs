using MySql.Data.MySqlClient;
using Org.BouncyCastle.Tls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;
using WpfApp1.DataBase;

namespace WpfApp1
{

       internal class Usuario
        {
            private static Usuario instance;

            public static Usuario GetInstance()
            {
                if (instance == null)
                    instance = new Usuario();

                return instance;
            }

            public int Id { get; set; }
            public string UsuarioNome { get; set; }
            public string Senha { get; set; }
        }
    }


