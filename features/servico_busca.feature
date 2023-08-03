Feature: Busca de serviço
  As a Usuario do sistema
  I want to buscar os servicos disponiveis por categoria, encanador, eletricista ou pedreiro
  So that eu visualize os servicos disponiveis

  Scenario: Buscar serviços de pedreiro
    Given eu estou na pagina de cadastrar um novo servico
    And eu preencho o nome do serviço "Servicos de pedreiro" Descricao "pequenos servicos de pedreiro" Valor "75" Categoria "pedreiro" Horario inicio "2023-08-29 20:20" Horario termino "2023-08-29 21:30"
    And eu clico em Create Servico
    When eu visito a pagina de listagem de todos os servicos
    And eu preencho no campo de busca a categoria "pedreiro"
    And eu clico em Search
    Then eu visualizo uma lista de serviços disponíveis de "pedreiro"

  Scenario: Buscar serviços de eletricista
    Given eu estou na pagina de cadastrar um novo servico
    And eu preencho o nome do serviço "Servicos de eletricista" Descricao "pequenos servicos de eletricista" Valor "75" Categoria "eletricista" Horario inicio "2023-08-29 20:20" Horario termino "2023-08-29 21:30"
    And eu clico em Create Servico
    When eu visito a pagina de listagem de todos os servicos
    And eu preencho no campo de busca a categoria "eletricista"
    And eu clico em Search
    Then eu visualizo uma lista de serviços disponíveis de "eletricista"

  Scenario: Buscar serviços de encanador
    Given eu estou na pagina de cadastrar um novo servico
    And eu preencho o nome do serviço "Servicos de encanador" Descricao "pequenos e grandes servicos em encanamento" Valor "100" Categoria "encanador" Horario inicio "2023-08-29 20:20" Horario termino "2023-08-29 21:30"
    And eu clico em Create Servico
    When eu visito a pagina de listagem de todos os servicos
    And eu preencho no campo de busca a categoria "encanador"
    And eu clico em Search
    Then eu visualizo uma lista de serviços disponíveis de "encanador"

  Scenario: Buscar serviços em uma categoria inexistente
    Given eu estou na pagina de listagem de todos os servicos
    And eu preencho no campo de busca a categoria "marceneiro"
    Then eu não encontro nenhum servico da categoria "marceneiro"

  Scenario: Buscar serviços em várias categorias
    Given o servico "Servicos de encanador" Descricao "pequenos e grandes servicos em encanamento" Valor "100" Categoria "encanador" Horario inicio "2023-08-29 20:20" Horario termino "2023-08-29 21:30" está cadastrado
    And e o servico "Servicos de eletricista" Descricao "pequenos servicos de eletricista" Valor "75" Categoria "eletricista" Horario inicio "2023-08-29 20:20" Horario termino "2023-08-29 21:30" está cadastrado
    And eu visito a pagina de listagem de todos os servicos
    And eu preencho no campo de busca a categoria "encanador"
    And eu clico em Search
    Then eu visualizo uma lista de serviços disponíveis para das categorias "encanador"
    And eu preencho no campo de busca a categoria "eletricista"
    And eu clico em Search
    Then eu visualizo uma lista de serviços disponíveis para das categorias "eletricista"