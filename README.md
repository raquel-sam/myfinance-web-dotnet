# myfinance-web-dotnet
Sistema de Finanças Pessoais

# Proposta

Vamos criar uma aplicação web para que famílias possam registrar suas receitas e despesas para análise de seus gastos e consequentemente um melhor planejamento financeiro. Esta aplicação deve permitir que o usuário monte uma espécie de Plano de Contas para categorizar todas as Transações realizadas. É importante que se tenha também relatórios de despesas por
período, permitindo uma análise detalhada das finanças.

# Entrega
Tela de Plano contas, com a função de visualização dos dados, criação de novo registro, edição exclusão.
Tela de Transação, somente com a função de visualização dos dados. Os demais itens, como a edição e exclusão da tela de transação e relatórios não foram criados.

## Arquitetura:

-MVC - Model View Controller

## Ferramentas:

-ASP.NET MVC (dotnet version 8.0.404)
-VSCode
-Banco de dados MySQL Server Studio
-git version 2.47.1.windows.1


## Como configurar o projeto
Para realizar a inicialização do projeto, siga os seguintes procedimentos:

1 Clonar o repositório (git clone https://github.com/raquel-sam/myfinance-web-dotnet.git)

2 Instalar os programas descritos nas ferramentas

3 Executar o script de criação do banco de dados no MySql Server Management Studio (myfinance-web-dotnet\Docs\myfinance.sql);

4 No arquivo MyFinanceDbContext.cs, o nome do server na variável abaixo (@"Server=('NOME_SERVER')), deve ser alterado conforme está na configuração do seu MySQL Server Management Studio 

```var connectionString = @"Server=('NOME_SERVER');Database=myfinance;Trusted_Connection=True;TrustServerCertificate=True";```

5 Executar o build e rodar