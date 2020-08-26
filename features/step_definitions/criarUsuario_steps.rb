Dado('que acesso o site') do
    @AcessarSite.load
  end
  
  Quando('crio um novo usuario') do
   @criarusuario = CriarUsuarioPageObject.new
   @criarusuario.selecionar_formulario
   @criarusuario.preencher_dados
   @criarusuario.botao


  end
  
  Então('novo usuario e criado com sucesso') do
    expect(page).to have_content "Usuário Criado com sucesso"
    
  end