Feature: As a usuário geral
    Eu quero ser capaz de entrar no sistema, modificar os dados e sair do sistema 
    Assim, eu posso ter a possibilidade de entrar e sair da minha conta

Scenario: O usuário escolhe se cadastrar como visitante
    Given eu sou um usuário geral
    And  estou na página inicial
    When eu seleciono o botão 'Cadastrar como visitante'
    Then o sistema me retorna uma página para realização de cadastro de visitante.

Scenario: O usuário escolhe se cadastrar como artista
    Given eu sou um usuário geral
    And  estou na página inicial
    When eu seleciono o botão 'Cadastrar como artista'
    Then o sistema me retorna uma página para realização de cadastro.

Scenario: O usuário escolhe se cadastrar como galeria
    Given eu sou um usuário geral
    And  estou na página inicial
    When eu seleciono o botão 'Cadastrar como galeria'
    Then o sistema me retorna uma página para realização de cadastro.

Scenario: O usuário realiza o cadastro como visitante 
    Given eu sou um usuário geral
    And  estou na página de cadastro de visitante
    When eu preencho o espaço nome para 'Maria', email para 'maria@gmail.com' e senha para 'euamoarte'
    And eu clico em concluir a ação
    Then  o sistema me retorna uma mensagem de sucesso

Scenario: O usuário realiza o cadastro como artista 
    Given eu sou um usuário geral
    And  estou na página de cadastro de artista
    When eu preencho o espaço nome para 'joao', email para 'joao@gmail.com', senha para 'euamoarte' , idade para '27', corrente artística para 'Arte Moderna'
    And eu insiro uma foto de perfil
    And eu clico em concluir a ação
    Then  o sistema me retorna uma mensagem de sucesso

Scenario: O usuário realiza o cadastro como galeria 
    Given eu sou um usuário geral
    And  estou na página de cadastro de galeria
    When eu preencho o espaço nome da galeria para 'Art Soul', email para 'artsoul@gmail.com', senha para 'euamodinheiro', localização para 'sucupira', descrição para 'Venha visitar a sua alma artística'
    And eu insiro fotos da galeria
    And eu clico em concluir a ação
    Then  o sistema me retorna uma mensagem de sucesso
    
Scenario: O usuário escolhe realizar o login
    Given eu sou um usuário geral
    And  estou na página inicial
    When eu seleciono o botão 'Entrar'
    Then o sistema me retorna uma página para realização de login.

Scenario:  O usuário realiza seu login
    Given eu sou um usuário geral
    And  estou na página de login
    When eu preencho o email para 'maria@gmail.com' e senha para 'euamoarte'
    And eu clico em concluir a ação
    Then  o sistema retorna à página inicial com minha conta já cadastrada

Scenario: O usuário não obtém sucesso ao tentar realizar seu login
    Given eu sou um usuário geral
    And  estou na página de login
    When eu preencho o email para 'maria@gmail.com' e senha para 'eunaogostodearte'
    And eu clico em concluir a ação
    Then  o sistema retorna uma mensagem de erro
    And a página em a opção de 'Tentar novamente' e 'Esqueci minha senha'

Scenario: Após errar a senha, o usuário escolhe redefinir a senha
    Given eu sou um usuário geral
    And  estou na página de erro ao efetuar o login
    When clico em 'Esqueci minha senha'
    Then  o sistema me retorna uma página para redefinição de senha

Scenario: O usuário redefine sua senha 
    Given eu sou um usuário geral
    And  estou na página de redefinição de senha
    When preencho minha nova senha para 'arte123' e confirmo a nova senha para 'arte 123'
    Then  o sistema me retorna uma mensagem de sucesso
    And volta para a página inicial

Scenario: O usuário sai da sua conta
    Given eu sou um usuário geral
    And  estou logado na minha conta
    When clico na opção 'sair' do meu perfil
    Then  o sistema me retorna uma mensagem de sucesso
    And volta para a página inicial sem conta cadastrada
