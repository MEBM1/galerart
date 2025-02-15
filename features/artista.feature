Feature: As um artista
    Eu quero ser capaz de inserir obras e participar de exposições
    Assim, eu gerenciar minhas obras no sistema e mostrar a minha arte para usuários

Scenario: O artista escolhe inserir uma Obra
    Given eu sou um artista
    And  estou na página do meu Perfil
    When eu clico em 'Inserir Obra'
    Then  o sistema me leva a uma página de cadastro de Obra

Scenario: O artista insere sua Obra em seu acervo
    Given eu sou um artista
    And  estou na página de cadastro de Obras
    When eu insiro a imagem da minha obra
    And eu insiro o nome 'O gato', valor 'R$ 500,00',  corrente artística 'Arte Abstrata', tipo da arte para 'Pintura Óleo sobre tela', descrição para 'O reencontro da vida e morte do gato'
    And eu clico em 'Inserir Obra'
    Then  o sistema me retorna uma mensagem de Sucesso 
    And o sistema me retorna à página de cadastro de Obras

Scenario: O artista escolhe solicitar participação em uma exposição
    Given eu sou um artista
    And  eu estou na página da exposição de Arte Moderna em Recife
    When eu clico em 'Pedir para participar da exibição'
    Then  o sistema me leva a uma página de cadastro

Scenario: O artista faz uma solicitação para participar de uma exposição
    Given eu sou um artista
    And  eu estou na página de cadastro da exposição de Arte Moderna em Recife
    When eu insiro as obras 'O caule' e 'Caos' do meu acervo 
    And eu confirmo minha ação
    Then  o sistema me retorna uma mensagem de sucesso na solicitação 
    And o status da solicitação passa a ser 'Pendente'

Scenario: O artista vê a lista de exposições que participa
    Given eu sou um artista
    And  eu estou na página do meu perfil
    When eu seleciono as exposições que participo
    Then  o Sistema me retorna uma página com uma lista das exposições em que participo
    And eu vejo os status das minhas obras nas exposições

Scenario: O artista escolhe definir em quais exposições vai participar
    Given eu sou o artista
    And  eu estou na página do meu perfil
    When eu seleciono o botão 'Solicitações Pendentes'
    Then  o Sistema me retorna uma página com uma lista das solicitações de participações em exposições

Scenario: O artista define se vai participar ou não de uma exposição
    Given eu sou o artista
    And  eu estou na página das solicitações de participações em exposições
    When eu seleciono o botão 'aceitar' da exposição 'Encontro com o mar' da galeria 'Art Soul'
    Then  o Sistema me retorna uma mensagem de sucesso 
    And  o Sistema me retorna à página das solicitações pendentes
