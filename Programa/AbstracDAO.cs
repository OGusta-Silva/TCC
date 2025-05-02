using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApp1.DataBase;

namespace WpfApp1
{
    internal abstract class AbstracDAO<T>
    {
        protected conexao conn = new conexao();
    }
}