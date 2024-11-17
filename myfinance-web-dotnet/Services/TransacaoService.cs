using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using myfinance_web_dotnet.Domain;
using myfinance_web_dotnet.Infrastructure;

namespace myfinance_web_dotnet.Services
{
    public class TransacaoService : ITransacaoService
    {

       private MyFinanceDbContext _myFinanceDbContext;
        public TransacaoService(MyFinanceDbContext myFinanceDbContext)
        {

            _myFinanceDbContext = myFinanceDbContext;
        }

        public void Excluir(int id)
        {
            throw new NotImplementedException();
        }

        public List<Transacao> ListarTransacoes()
        {
           var lista = _myFinanceDbContext.Transacao.ToList();
            return lista;
        }

        public Transacao RetornarRegistro(int id)
 {
            return new Transacao();
        }

        public void Salvar(Transacao item)
        {
            throw new NotImplementedException();
        }
    }
}