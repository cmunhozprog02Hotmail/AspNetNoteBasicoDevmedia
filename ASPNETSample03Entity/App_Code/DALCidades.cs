using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNETSample03Entity.App_Code
{
    public class DALCidades
    {
        /*Para Selecionar  */
        public IQueryable<Cidades> Retrieve()
        {
            return SampleDbContext.Current.Cidades;
        }

        public void Add(Cidades c)
        {

        }
        public void Update(Cidades c)
        {

        }
        public void Delete(int idCidade)
        {

        }
    }
}