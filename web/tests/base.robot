*** Settings *** 
Library         SeleniumLibrary


***Variables***
${url}              https://training-wheels-protocol.herokuapp.com/ 


***Keywords*** 
Abrir sessão
    Open Browser                    ${url}                   chrome
Fechar sessão
    Capture Page Screenshot
    Close Browser