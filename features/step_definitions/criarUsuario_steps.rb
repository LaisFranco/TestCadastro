Dado('que acesso o site') do
    @AcessarSite.load
  end
  
  Quando('crio um novo usuario') do
   @criarusuario = CriarUsuarioPageObject.new
   @criarusuario.selecionar_formulario
   @criarusuario.preencher_dados
   @criarusuario.botao_criar


  end
  
  Então('novo usuario e criado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
  end