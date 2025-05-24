namespace WpfApp1.Interface
{
  ///<summary
  /// interface contraro para classes DAO
  /// <typeparam name = "T"> </typeparam>


  interface IDAO<T>
  {
    void Isert(T t);

    void Update(T t);
    void Delete(T t);

    List<T> List();
    T GetbyId(int id);
  }
}
