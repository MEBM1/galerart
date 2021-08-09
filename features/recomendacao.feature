Feature: As a visitante logado
    Eu quero ser capaz de de selecionar categorias que me interessem 
    Assim, o sistema pode me recomendar conteúdos relacionados

Scenario: O visitante logado consegue selecionar sobre quais tipos de artes/artistas quer receber informações e atualizações
    Given eu sou um visitante logado do público geral
    And  estou na página de seleção das categorias de arte que me interessam
    When eu seleciono a categoria 'Arte Abstrata ' e o artista 'Claude Monet' aos meus interesses
    And  eu confirmo minha ação 
    Then o sistema me retorna uma página com obras/museus e galerias/artistas que podem ser do meu interesse.