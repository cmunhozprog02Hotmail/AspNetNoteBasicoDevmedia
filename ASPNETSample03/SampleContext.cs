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
            IQueryable<Pessoa> iqPessoa = GetPessoas().AsQueryable<Pessoa>();
            if(search != null)
                iqPessoa = iqPessoa.Where(q => q.nome.Contains(search));
            return iqPessoa;
        }
        public void AddPessoa(Pessoa p)
        {
            sdc.Pessoas.InsertOnSubmit(p);
            sdc.SubmitChanges();
        }
    }
    
}