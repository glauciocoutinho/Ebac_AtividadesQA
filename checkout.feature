            #language: pt

            Funcionalidade: Tela de checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir o meu cadastro
            Para finalizar a minha compra

            Contexto:
            Dado que eu, o cliente, acesse a página de checkout do site EBAC-SHOP

            Cenario: Concluir checkout
            Quando preencher todos os campos obrigatórios
            E clicar em "FINALIZAR COMPRA"
            Então o sistema direcionará para a área de pagamento

            Cenario: Campo vazio checkout
            Quando preencher campos
            E deixar algum dos campos obrigatórios em branco
            Então clicar em "FINALIZAR A COMPRA" o sistema deve exibir a mensagem de
            alerta "Todos os campos com * devem ser preenchidos para finalizar a compra."

            Esquema do Cenario: E-mail inválido checkout
            Quando preencher todos os campos obrigatórios
            E preencher o campo e-mail <e-mail invalido>
            Então clicar em "FINALIZAR A COMPRA" o sistema deve exibir a mensagem <alerta>

            Exemplos:
            | e-mail invalido       | alerta                                      |
            | "jaooo@gmail.com"     | "E-mail Inválido. Verifique o seu cadastro" |
            | "kikikiki@gmarril.c"  | "E-mail Inválido. Verifique o seu cadastro" |
            | "meu_email@mail.cm"   | "E-mail Inválido. Verifique o seu cadastro" |
            | "e"tatat@gggmail.com" | "E-mail Inválido. Verifique o seu cadastro" |