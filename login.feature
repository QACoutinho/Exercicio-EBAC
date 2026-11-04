Funcionalidade: Autenticação

  Cenário: Login bem-sucedido com credenciais válidas
    Quando introduzir credenciais de acesso válidas
    Então devo ser redirecionado para a tela de checkout

  Esquema do Cenário: Bloquear autenticação com dados inválidos
    Quando introduzir o utilizador "<usuario>" e a senha "<senha>"
    Então o sistema deve impedir o login exibindo a mensagem "<mensagem>"

    Exemplos:

      | usuario                  | senha          | mensagem                  |
      | cliente@ebac.shop        | SenhaErrada123 | Usuário ou senha inválidos |
      | nao.cadastrado@ebac.shop | Qualquer123!   | Usuário ou senha inválidos |
