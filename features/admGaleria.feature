Feature:  As a administrador de galeria
    Eu quero ser capaz de gerenciar o acervo de minha Galeria de Arte
   Assim, eu posso manter a Galera de Arte gerenciada

Scenario: O Administrador de galeria divide seu acervo por períodos, estilo de arte, artistas e até Corrente artística
    Given eu sou o administrador de uma Galeria de Arte
    And  estou na página com meu acervo para ser classificado
    When eu classifico as obra 'Abaporu' como 'Movimento Modernista' e artista 'Tarsila do Amaral'
    And clico em concluir ação 1
    Then o sistema me retorna uma mensagem de sucesso

Scenario: O Administrador de galeria altera a classificação das obras do seu acervo 
    Given eu sou o administrador de uma Galeria de Arte
    And  estou na página com meu acervo para ser classificado
    And  clico para visualizar as obras já classificadas
    When eu altero a classificação da obra 'O Gato' de 'Expressionismo' para 'Surrealismo'
    And clico em concluir ação 
    Then o sistema me retorna uma mensagem de sucesso na alteração

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
    When eu faço o cadastro da exposição
    Then  o Sistema retorna uma mensagem de sucesso
