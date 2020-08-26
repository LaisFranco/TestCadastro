class CriarUsuarioPageObject < SitePrism::Page 

element :formulario , '.collapsible-header'
element :nome , '#user_name'
element :sobrenome, '#user_lastname'
element :email, '#user_email'
element :end, '#user_address'
element :universidade, '#user_university'


    
def selecionar_formulario
    
    #formulario.click
    find(class: 'collapsible-header' , match: :first ).click
   # page.find_all(:xpath, '/html/body/div[2]/div[1]/ul/li[1]/div/ul/li[1]/a').click

    find("a[href='/users/new']").click
   
    

end

def preencher_dados
    usuario
   # nome.set @name

    #fill_in('user_name', :with => 'Larissa')
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

def botao_criar

  find(class: 'actions btn waves-effect green').click

end




end