# monitor-server
Este é um script em shell bash que realiza o monitoramento de alguns sites da UCV (Universidad Central de Venezuela) e envia mensagens de alerta por meio da API do Telegram caso algum deles esteja fora do ar.

O script começa com o uso do comando "curl" para fazer uma solicitação HTTP GET ao site ucv.edu.br. O parâmetro "--write-out %{http_code}" é usado para obter apenas o código de resposta HTTP da requisição, que é armazenado na variável "codigo_http". O parâmetro "--silent" é usado para suprimir a saída normal do "curl" e o redirecionamento de saída "/dev/null" é usado para descartar a saída.

Em seguida, é feita uma verificação usando um bloco condicional "if". Se o código de resposta HTTP for diferente de 200 (indicando que o site está fora do ar), o script usa novamente o comando "curl" para enviar uma mensagem de alerta para o canal do Telegram especificado. A mensagem contém informações sobre o site que está fora do ar.

Esse processo de verificação e envio de mensagens de alerta é repetido para outros três sites da UCV: moodlep.ucv.edu.br (AVA Presencial), moodle.ucv.edu.br (AVA Semipresencial) e portal.ucv.edu.br (Portal Acadêmico).

No final, o comando "exit" é usado para encerrar o script.

É importante mencionar que o script utiliza a API do Telegram para enviar mensagens de alerta. Certifique-se de ter uma chave de acesso (token) válido e substitua "bot432825635:AAHVgXpXh9yrJm0JXE3ktoqjLg-I38aK6eY" pelo seu próprio token na URL do comando "curl" para enviar as mensagens corretamente. Além disso, ajuste os IDs de chat ("-260444793") de acordo com o chat ou canal do Telegram que você deseja receber as mensagens de alerta.
