### instruções para carregar imagens

1. nosso backend de imagens faz recortes automáticos, para utilizá-lo você vai precisar de um `image_public_id` da foto e de um tamanho de recorte que vai depender do tamanho do container na interface que está montando.
2. faça a composição da url e envie a request como `get`.
3. a resposta será uma imagem no formato padrão ou especificado.

### formato

    https://photos.enjoei.com.br/public/`tamanho`/`public_image_id`[.jpg|.png]

### exemplos de request

    https://photos.enjoei.com.br/public/500x500/czM6Ly9waG90b3MuZW5qb2VpLmNvbS5ici9wcm9kdWN0cy84MTI1OTIvNmE1ZDFhOTgyYjAwYjdjZDU3MjJhYzQ0NzE3YjVhZGMuanBn

### tamanhos válidos

    - 75x75
    - 180x180
    - 240x240
    - 460x460
    - 500x500
    - 900x500
    - 1200x1200
    - 1176x200
