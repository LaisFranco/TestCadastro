#language:pt
#utf-8


Funcionalidade: Criar novo usuario

Como usuario do sistema
Quero criar um novo usuario
Para testar a criação de um novo usuario

@CadastroSucesso
Cenario: Cadastro com sucesso
Dado que acesso o site 
Quando crio um novo usuario
Então novo usuario e criado com sucesso
