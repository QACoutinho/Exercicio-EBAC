Funcionalidade: Autenticação

  Cenário: Login bem-sucedido com credenciais válidas
    Dado que preencho o campo "Usuário" com um valor cadastrado e válido
    E preencho o campo "Senha" com a senha correta correspondente ao usuário
    Quando confirmo o login
    Então devo ser direcionado para a tela de checkout
    E devo ver o cabeçalho "Checkout" ou a URL contendo "/checkout"

  Esquema do Cenário: Exibir alerta ao informar usuário ou senha inválidos
    Dado que preencho o campo "Usuário" com "<usuario>"
    E preencho o campo "Senha" com "<senha>"
    Quando confirmo o login
    Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"
    E devo permanecer na página de login

    Exemplos:
      | usuario                   | senha           |
      | cliente@ebac.shop         | SenhaErrada123  |  # senha inválida para usuário válido
      | nao.cadastrado@ebac.shop  | Qualquer123!    |  # usuário inexistente (senha irrelevante)
