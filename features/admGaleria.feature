Feature:  As a administrador de galeria
    Eu quero ser capaz de gerenciar o acervo de minha Galeria de Arte
   Assim, eu posso manter a Galera de Arte gerenciada

Scenario: O Administrador de galeria escolhe definir quais obras vão participar da exposição
    Given eu sou o administrador da galeria
    And  eu estou na página da minha exposição de Arte Abstrata em São Paulo 
    When eu seleciono o botão 'Solicitações Pendentes'
    Then  o Sistema me retorna uma página com uma lista das solicitações de participações para a exposição

Scenario: O Administrador de galeria define se uma obra vai participar ou não da exposição
    Given eu sou o administrador da galeria
    And  eu estou na página das solicitações de participações para a minha exposição de Arte Abstrata em São Paulo
    When eu seleciono o botão 'aceitar' a obra 'O Gato' do artista 'Paulo Freitas'
    Then  o Sistema me retorna uma mensagem de sucesso 
    And  o Sistema me retorna à página das solicitações pendentes

Scenario: O Administrador de galeria escolhe adicionar uma exposição à sua lista
    Given eu sou o administrador da galeria
    And  eu estou na página que contém minhas exposições
    When eu seleciono o botão 'adicionar exposição'
    Then  o Sistema me leva a uma página de cadastro de exposição

Scenario: O Administrador de galeria adiciona uma exposição à sua lista
    Given eu sou o administrador da galeria
    And  eu estou na página de cadastro de exposição
    When eu faço o cadastro da exposição **************************
    Then  o Sistema retorna uma mensagem de sucesso

Scenario: O Administrador de galeria escolhe solicitar que um artista participe de uma exposição
    Given eu sou o administrador da galeria
    And eu estou na página do artista 'Jose'
    When eu seleciono o botão 'solicitar participação em exposição'
    Then o sistema me retorna uma página com as exposições de minha galeria

Scenario: O Administrador de galeria solicita que um artista participe de uma exposição
    Given eu sou o administrador da galeria
    And eu estou na página de seleção de exposição
    When eu seleciono a exposição 'Encontro com o mar'
    And eu confirmo minha ação
    Then o sistema me retorna uma mensagem de sucesso