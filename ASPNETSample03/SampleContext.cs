using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;

namespace ASPNETSample03
{
    public class SampleContext
    {
        SampleDataContext sdc = new SampleDataContext();

        public Table<Pessoa> GetPessoas()
        {
            return sdc.Pessoas;
        }
        public IQueryable<Pessoa> GetPessoas(string search)
        {
            return GetPessoas().Where(p => p.nome.Contains(search));
        }
    }
    
}