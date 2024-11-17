
using myfinance_web_dotnet.Domain;

namespace myfinance_web_dotnet.Services
{
    public interface ITransacaoService
    {
        List<Transacao> ListarTransacoes();
        void Salvar(Transacao item);
        void Excluir (int id);
        Transacao RetornarRegistro(int id);
    }
}