using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApp1.Interface;
using WpfApp1.DataBase;



namespace WpfApp1.Models

{
  
  class InfracaoDAO : IDAO<Infracao>
  {
    private static Conexao? conn;
    
    public InfracaoDAO() { 
    conn = new Conexao();
    }
   
    public void Delete(Infracao t)
    {
      throw new NotImplementedException();
    }

    public Infracao GetbyId(int id)
    {
      throw new NotImplementedException();
    }

    public void Isert(Infracao t)
    {
      try
      {

      }catch (Exception e){
       
       throw e;

      }finally 
      {
        DataBase.Conexao.Close();
      }
    }

    public List<Infracao> List()
    {
      throw new NotImplementedException();
    }

    public void Update(Infracao t)
    {
      throw new NotImplementedException();
    }
  }
}
