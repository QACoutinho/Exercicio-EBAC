Funcionalidade: Cadastro — Concluir cadastro para finalizar a compra
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro da EBAC-SHOP e não autenticado

  Cenário: Cadastro com sucesso ao preencher todos os dados obrigatórios
    Quando preencher todos os campos obrigatórios com dados válidos
    E submeter o formulário
    Então devo ser direcionado para a tela de checkout com o resumo do pedido

  Esquema do Cenário: Bloquear cadastro com e-mail em formato inválido
    Quando preencher os dados obrigatórios utilizando o e-mail "<email_invalido>"
    E submeter o formulário
    Então o sistema deve impedir o avanço exibindo a mensagem "<mensagem_erro>"

    Exemplos:

      | email_invalido | mensagem_erro                 |
      | teste2ebac.com | formato inválido              |
      | 1$ebac.te      | caracter não permitido '$'    |
      | teste@teste    | endereço de e-mail incompleto |

  Esquema do Cenário: Bloquear cadastro com campo obrigatório vazio
    Quando submeter o formulário deixando o campo "<campo_obrigatorio>" vazio
    Então o sistema deve exibir uma mensagem de alerta indicando que o campo é obrigatório

    Exemplos:

      | campo_obrigatorio |
      | Nome completo     |
      | E-mail            |
      | Senha             |
      | CPF               |
      | CEP               |
      | Endereço          |
      | Cidade            |
      | Estado            |
      | Telefone          |
