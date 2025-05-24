using WpfApp1.DataBase;

namespace WpfApp1
{
  internal abstract class AbstracDAO<T>
  {
    protected Conexao conn = new Conexao();
  }
}