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
            E a senha "qwwerty"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "cecilia_pessoa"
            E a senha "abc@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticação válida de vários usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve direcionar para a tela de checkout

            Exemplos:
            | usuario               | senha      |
            | "cecilia@ebac.com.br" | "abc@123"  |
            | "maria@ebac.com.br"   | "Qwe12!@"  |
            | "matheus@ebac.com.br" | "abc@123"  |
            | "marcos@ebac.com.br"  | "345Asd!#" |
            | "luccas@ebac.com.br"  | "abc@123"  |
            | "joão@ebac.com.br"    | "890*Uio"  |