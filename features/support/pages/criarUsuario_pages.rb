class CriarUsuarioPageObject < SitePrism::Page 

def selecionar_formulario
 
    find(class: 'collapsible-header' , match: :first ).click

    find("a[href='/users/new']").click

end

def preencher_dados
    usuario
  
    fill_in('user_name',:with => @first_name )
    fill_in('user_lastname', :with => @last_name)
    fill_in('user_email', :with => @email)
    fill_in('user_address', :with => 'Rua Nova Cantareira')
    fill_in('user_university', :with => 'Unicamp')
    fill_in('user_profile' , :with => ' Analista de testes')
    fill_in('user_gender', :with => "Feminino")
    fill_in('user_age', :with => "25")

end

def usuario 

    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name
    @email = "#{@first_name.downcase + @last_name.downcase}@mailinator.com"
end

def botao

find('input[name="commit"]').click

end

end