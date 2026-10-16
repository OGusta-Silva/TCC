namespace WpfApp1.Data
{
  internal abstract class AbstracDAO<T>
  {
    protected Conexao conn = new Conexao();
  }
}