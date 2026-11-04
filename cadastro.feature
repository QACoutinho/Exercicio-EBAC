Funcionalidade: Seleção de produto

  Cenário: Seleção de tamanho, cor e quantidade
    Dado que o usuário está na tela do produto
    Quando selecionar o tamanho "M", a cor "Azul", a quantidade "3" e adicionar ao carrinho
    Então o sistema deve exibir a mensagem "Produto adicionado com sucesso"
    E o item deve ser adicionado ao carrinho com as especificações escolhidas

  Cenário: Limpar seleção de tamanho, cor e quantidade
    Dado que o usuário tem o tamanho "G", a cor "Preto" e a quantidade "2" selecionados
    Quando acionar a opção "Limpar"
    Então os campos de tamanho e cor devem voltar ao estado padrão
    E a quantidade deve ser resetada para "1"
    E o botão de compra deve permanecer desativado

  Esquema do Cenário: Validação do limite de quantidade por item
    Dado que o usuário está na tela do produto com limite de 10 unidades por item
    Quando tentar adicionar a quantidade "<quantidade>" ao carrinho
    Então o sistema deve agir conforme o esperado de acordo com a "<acao>"
    E exibir a mensagem "<mensagem>"

    Exemplos:

      | quantidade | acao               | mensagem                         |
      | 1          | inclusão permitida | Produto adicionado com sucesso   |
      | 10         | inclusão permitida | Produto adicionado com sucesso   |
      | 11         | inclusão bloqueada | Quantidade máxima permitida é 10 |
