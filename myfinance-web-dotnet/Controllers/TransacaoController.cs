using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using myfinance_web_dotnet.Infrastructure;
using myfinance_web_dotnet.Models;
using myfinance_web_dotnet.Services;

namespace myfinance_web_dotnet.Controllers
{
    public class TransacaoController : Controller
    {

        private readonly ITransacaoService _transacaoService;

        public TransacaoController(ITransacaoService transacaoService)
        {
            _transacaoService = transacaoService;
        }
        public IActionResult Index()
        {
        var listaTransacao = _transacaoService.ListarTransacoes();
        ViewBag.ListaTransacao = listaTransacao;

        return View();
        }

    }
}

