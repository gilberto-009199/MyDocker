
# usando colume podemos editar pelo nosso computador e excecutar pelo nosso container

docker run --rm -it -v $(pwd)/:/usr/src/app -p 3000:3000 node:12 bash

# logado no container use: 
#   npm install express --save
#   node index.js