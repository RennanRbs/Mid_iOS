### instruções para ver detalhes da lojinha

1. a api de detalhes de lojinha entrega um json e aceita um request rest.
2. você vai precisar da id ou do nick da lojinha, que vem da lista, para compor a url.
3. execute a request como `get` e faça o parsing como json.

### exemplos de request

    https://pages.enjoei.com.br/stores/56125/v2.json
    https://pages.enjoei.com.br/stores/@enjoei-pro/v2.json
    