### instruções para encontrar o preço de um produto

1. a api de precificação de produto entrega um json e aceita um request rest.
2. você vai precisar da id do produto, que vem da lista, para compor a url.
3. execute a request como `get` e faça o parsing como json.

### exemplo de request

    https://www.enjoei.com.br/api/v5/products/47073453/pricing.json
    

### obs:

essa api só é utilizada para mostrar o melhor preço e o valor das parcelas na tela de detalhes do produto (substituindo e complementando o fallback_pricing da api de produtos).