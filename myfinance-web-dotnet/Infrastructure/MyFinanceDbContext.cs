using Microsoft.EntityFrameworkCore;
using myfinance_web_dotnet.Domain;

namespace myfinance_web_dotnet.Infrastructure
{
    public class MyFinanceDbContext: DbContext
    {
        public DbSet<PlanoConta> PlanoContas {get; set;}
        public DbSet<Transacao> Transacaos {get; set;}

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var connnectionString = @"Server=LOCALHOST\SQLEXPRESS;Database=myfinance;Trusted_Connection=True;TrustServerCertificate=true;
";
            optionsBuilder.UseSqlServer(connnectionString);
        }
    }
}