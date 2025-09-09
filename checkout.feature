Funcionalidade: Cadastro — Concluir cadastro para finalizar a compra
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro da EBAC-SHOP
    E não estou autenticado

  # Critério 1 — Cadastro com todos os dados obrigatórios
  Cenário: Cadastro com sucesso ao preencher todos os dados obrigatórios
    Dado que visualizo os campos obrigatórios marcados com asterisco
    Quando preencho os campos obrigatórios com dados válidos:
      | campo         | valor                    |
      | Nome completo | Maria Teste              |
      | E-mail        | maria.teste@ebac.com  |
      | Senha         | Abc12345                 |
      | CPF           | 123.456.789-09           |
      | CEP           | 01310-000                |
      | Endereço      | Av. Paulista, 1000       |
      | Cidade        | São Paulo                |
      | Estado        | SP                       |
      | Telefone      | 11999999999              |
    E envio o formulário de cadastro
    Então devo ser direcionado para a tela de checkout
    E devo visualizar o resumo do pedido ou a continuação do checkout

  # Critério 2 — E-mail com formato inválido exibe mensagem de erro
  Esquema do Cenário: Bloquear cadastro quando o e-mail estiver em formato inválido
    Dado que visualizo os campos obrigatórios marcados com asterisco
    E preencho os campos obrigatórios com dados válidos, exceto o campo E-mail
    Quando informo o e-mail "<email_invalido>"
    E envio o formulário de cadastro
    Então deve exibir uma mensagem de erro "<mensagem_erro>"
    E devo permanecer na tela de cadastro
    E não devo ser direcionado para a tela de checkout

    Exemplos:
      | email_invalido    | mensagem_erro                       |
      | teste2ebac.com    | formato inválido                    |
      | 1$ebac.te         | caracter não permitido '$'          |
      | teste@teste       | endereço de e-mail incompleto       |

  # Critério 3 — Campos vazios exibem alerta e bloqueiam o avanço
  Esquema do Cenário: Bloquear cadastro quando campo obrigatório estiver vazio
    Dado que visualizo os campos obrigatórios marcados com asterisco
    E preencho os demais campos obrigatórios com dados válidos
    Quando deixo o campo "<campo_obrigatorio>" vazio
    E envio o formulário de cadastro
    Então deve exibir mensagem de alerta para o campo "<campo_obrigatorio>"
    E devo permanecer na tela de cadastro
    E não devo ser direcionado para a tela de checkout

    Exemplos:
      | campo_obrigatorio | valor     | 
      | Nome completo     | (vazio)   |
      | E-mail            | (vazio)   |
      | Senha             | (vazio)   |
      | CPF               | (vazio)   |
      | CEP               | (vazio)   |
      | Endereço          | (vazio)   |
      | Cidade            | (vazio)   |
      | Estado            | (vazio)   |
      | Telefone          | (vazio)   |
