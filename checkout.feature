Funcionalidade: CheckOut

Cenário: Cadastro de usuário
Dado que o usuário vá se cadastrar
Quando preencher com todos os dados obrigatórios, marcado com asteriscos,
Então não deve ser permitido preencher o campo do <e-mail invalido>. 
E o quando o usuário preencher com um formato inválido o sistema deve inserir uma <mensagem de erro>
Então ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 


e-mail invalido         | mensagem de erro
--------------------------------------------------------
teste2ebac.com          | formato inválido
1$ebac.te               | caracter não permitido '$'
teste@teste             | endereço de e-mail incompleto 
