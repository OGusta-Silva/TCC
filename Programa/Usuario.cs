namespace WpfApp1
{

  internal class Usuario
  {
    private static Usuario? instance;

    public static Usuario GetInstance()
    {
      if (instance == null)
      {
        instance = new Usuario();
      }

      return instance;
    }

    internal static bool Login(string usuario, string senha)
    {
      UsuarioDAO dao = new();
      var user = dao.GetByUsuario(usuario, senha);
      return user != null;
    }

    public int Id { get; set; }
    public string? UsuarioNome { get; set; }
    public string? Senha { get; set; }
  }
}


