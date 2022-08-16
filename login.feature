            #language:pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de Autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "cecilia@ebac.com.br"
            E a senha "abc@123"
            Então deve direcionar para a tela de checkout

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "cecilia@ebac.com.br"
            E a senha "qwwerty44"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "ewererretret@ebac.com"
            E a senha "abc@123"
            Então deve exibir uma mensagem de alerta "Usuário não existe!"

            Esquema do Cenário: Validar autenticações inválidas
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma mensagem de alerta <mensagem>

            Exemplos:
            | usuario                 | senha       | mensagem                      |
            | "cecilia@ebac.com.br"   | "qwwerty44" | "Usuário ou senha inválidos!" |
            | "ewererretret@ebac.com" | "abc@123"   | "Usuário não existe!"         |
