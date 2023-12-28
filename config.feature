            # language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Desejo também escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado Que eu, o cliente, acesse a página do site EBAC-SHOP
            Quando escolher o produto desejado

            Cenario: Campos obrigatórios
            E não selecionar todos os campos necessários
            Então o sistema deve exibir uma mensagem de alerta "É obrigatório informar a cor, o tamanho e a quantidade do produto desejado, tente novamente!"

            Cenario: Quantidade máxima
            E selecionar o tamanho, a cor e a quantidade de produtos acima de 10 itens
            Então o sistema deve exibir uma mensagem de alerta "Quantidade máxima de itens, tente novamente."

            Cenario: Limpar checkout
            E selecionar o tamanho, a cor e a quantidade
            E clicar no botão "LIMPAR"
            Então a tela ou página deve voltar ao estado original para nova seleção


            Esquema do Cenario: Adicionar produto
            E selecinar <tamanho>, <cor> e <quantidade>
            Então o produto desejado é incluido no carrinho de compras

            Exemplos:
            | tamanho | cor    | quantidade |
            | l       | Blue   | 2          |
            | l       | Orange | 2          |
            | m       | Blue   | 1          |
            | s       | Red    | 2          |
            | xs      | Blue   | 3          |


