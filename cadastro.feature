Funcionalidade: Seleção de produto

  # Cenário 1: Seleção de tamanho, cor e quantidade
  Cenário: Seleção de tamanho, cor e quantidade
    Dado que o usuário está na tela do produto
    E o produto possui tamanhos disponíveis
    E o produto possui cores disponíveis
    Quando o usuário selecionar o tamanho "M"
    E selecionar a cor "Azul"
    E informar a quantidade "3"
    E clicar no botão "Adicionar ao carrinho"
    Então o sistema deve exibir a mensagem "Produto adicionado com sucesso"
    E o item deve ser adicionado ao carrinho com tamanho "M", cor "Azul" e quantidade "3"

  # Cenário 2: Quantidade limite de 10 produtos
  Cenário: Bloqueio ao ultrapassar o limite de 10 unidades por item
    Dado que o usuário está na tela do produto
    E o limite de quantidade por item é 10
    Quando o usuário informar a quantidade "11"
    E clicar no botão "Adicionar ao carrinho"
    Então o sistema deve impedir a inclusão do item
    E o sistema deve exibir a mensagem "Quantidade máxima permitida é 10"
    E o carrinho não deve ser alterado

  # Cenário 3: Botão "Limpar"
  Cenário: Limpar seleção de tamanho, cor e quantidade
    Dado que o usuário está na tela do produto
    E o usuário selecionou tamanho "G", cor "Preto" e quantidade "2"
    Quando o usuário clicar no botão "Limpar"
    Então os campos de tamanho e cor devem voltar ao estado padrão (não selecionado)
    E a quantidade deve ser resetada para "1"
    E mensagens de sucesso ou erro devem desaparecer
    E o botão "Adicionar ao carrinho" deve permanecer desativado até que tamanho e cor sejam selecionados

Esquema do Cenário: Validação da quantidade respeitando o limite
  Dado que o usuário está na tela do produto
  E o limite de quantidade por item é 10
  Quando o usuário informar a quantidade "<quantidade>"
  E clicar no botão "Adicionar ao carrinho"
  Então o resultado esperado deve ser "<resultado>"
  E a mensagem exibida deve ser "<mensagem>"

  Exemplos:
    | quantidade | resultado         | mensagem                          |
    | 1          | inclusão permitida| Produto adicionado com sucesso     |
    | 10         | inclusão permitida| Produto adicionado com sucesso     |
    | 11         | inclusão bloqueada| Quantidade máxima permitida é 10   |
