*** Settings ***
Library  app.py

*** Test Cases *** 
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Leonardo
    Should Be Equal     ${result}   Olá Leonardo, bem-vindo ao curso básico de Robot Framework!