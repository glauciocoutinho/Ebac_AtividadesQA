            #language: pt

            Funcionalidade: Login
            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação da plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu, o cliente, acesse a página de autenticação do site EBAC-SHOP

            Cenario: Login usuário válido
            Quando eu, o cliente, digitar usuário "joaobatista@gmail.com"
            E senha JoaoBatista$321
            Então deve ser direcionado para a tela de checkout

            Esquema do Cenario: Autenticar Multiplos Login
            Quando eu, o cliente, digitar <usuario>
            E <senha>
            Então deverá ser exibido a <mensagem>

            Exemplos:
            | usuario               | senha        | mensagem                     |
            | "jaooo@gmail.com"     | "jao98"      | "Usuário ou senha inválidos" |
            | "kikikiki@gmarril.c"  | "kikiki"     | "Usuário ou senha inválidos" |
            | "meu_email@mail.cm"   | "someu1990"  | "Usuário ou senha inválidos" |
            | "e"tatat@gggmail.com" | "123456tata" | "Usuário ou senha inválidos" |