#!/bin/bash

codigo_http=$(curl --write-out %{http_code} --silent --output /dev/null ucv.edu.br)

if [ $codigo_http -ne 200 ]; then

    curl "https://api.telegram.org/bot432825635:AAHVgXpXh9yrJm0JXE3ktoqjLg-I38aK6eY/sendMessage?chat_id=-260444793&text=O SITE DA UCV ESTÁ FORA  DO AR!"

fi
echo
codigo_http=$(curl --write-out %{http_code} --silent --output /dev/null moodlep.ucv.edu.br)

if [ $codigo_http -ne 200 ]; then

    curl "https://api.telegram.org/bot432825635:AAHVgXpXh9yrJm0JXE3ktoqjLg-I38aK6eY/sendMessage?chat_id=-260444793&text=O AVA PRESENCIAL ESTA FORA DO AR!"
  
fi
echo
codigo_http=$(curl --write-out %{http_code} --silent --output /dev/null moodle.ucv.edu.br)

if [ $codigo_http -ne 200 ]; then

    curl "https://api.telegram.org/bot432825635:AAHVgXpXh9yrJm0JXE3ktoqjLg-I38aK6eY/sendMessage?chat_id=-260444793&text=O AVA SEMIPRESENCIAL DA UCV ESTA FORA DO AR!"
  
fi
echo
codigo_http=$(curl --write-out %{http_code} --silent --output /dev/null portal.ucv.edu.br)

if [ $codigo_http -ne 302 ]; then

    curl "https://api.telegram.org/bot432825635:AAHVgXpXh9yrJm0JXE3ktoqjLg-I38aK6eY/sendMessage?chat_id=-260444793&text=O PORTAL ACADEMICO ESTA FORA DO AR!"

fi
exit
