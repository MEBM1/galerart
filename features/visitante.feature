Feature: As a visitante
    Eu quero ser capaz de ver exposições, artistas, Galerias, indicações e favoritar qualquer uma delas
    Assim, eu posso ter acesso ao conteúdo artístico do Sistema

Scenario: ver exposições de uma Galeria
	Given Eu sou um visitante  
    And Eu estou na página da Galeria 'ArtSoul'
	And Eu consigo ver o ícone da lista de exposições
	When Eu clico na lista de exposições
    Then O sistema me retorna uma lista de exposições resumidas contendo nome, tempo de duração, custo, local

Scenario: ver artistas de uma Galeria
	Given Eu sou um visitante  
	And Eu estou na página da Galeria 'ArtSoul'
	And Eu consigo ver o ícone da lista de exposições
	When Eu clico na lista de exposições
    Then O sistema me retorna uma lista de artistas vinculados contendo nome, foto e estilo de arte

Scenario: Lista de exposições
	Given Eu sou um visitante  
    And Eu estou na página inicial 
	And Eu consigo ver o ícone da lista de exposições
	When Eu clico na lista de exposições
    Then Eu consigo ver uma lista de exposições resumidas contendo nome, tempo de duração, custo, local

Scenario: Olhar página de certa exposição permanente
    Given Eu sou um visitante  
    And Eu estou na lista de exposições
    And Eu consigo ver a exposição permanente ‘Segredos’
    When Eu clico na exposição ‘Segredos’
    Then Eu sou levado a página da exposição ‘Segredos’
    And Eu consigo ver informações completas da exposição ‘Segredos’

Scenario: Olhar página de certa exposição temporária 
    Given Eu sou um visitante  
    And Eu estou na lista de exposições
    And Eu consigo ver a exposição temporária ‘Degas’
    When Eu clico na exposição temporária ‘Degas’
    Then Eu sou levado à página da exposição temporária ‘Degas’
    And Eu consigo ver informações completas da exposição temporária ‘Degas’

Scenario: Adicionar uma exposição à lista de interesses
	Given Eu sou um visitante  
    And Eu estou na página da exposição 'Degas'
    When Eu clico no botão de 'Tenho Interesse'
    Then O sistema me retorna uma mensagem de sucesso

Scenario: Você também pode gostar dessas outras indicações relacionadas
    Given Eu sou um visitante  
    And Eu estou na página da exposição 'Segredos'
	And Eu consigo ver o aviso de outras indicações relacionadas
	When Eu clico no aviso
    Then Eu consigo visualizar uma lista de exposições relacionadas à exposição que estou vendo

Scenario: selecionar um artista
	Given Eu sou um visitante  
    And Eu estou na lista de artistas
	And Eu consigo ver os ícones dos artistas
	When Eu clico no artista 'Romero Britto'
    Then O sistema me leva à página do artista Romero Britto
