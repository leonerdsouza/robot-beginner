*** Settings *** 
Resource        base.robot

Test Setup      Abrir sessão
Test Teardown   Fechar sessão

***Test Cases*** 
Should Click on Radio Button - ID
    Go To                               ${url}/radios
    Select Radio Button                 movies      cap
    Radio Button Should Be Set To       movies      cap

Should Click on Radio Button - Value
    [tags]      value
    Go To                               ${url}/radios
    Select Radio Button                 movies      the-avengers
    Radio Button Should Be Set To       movies      the-avengers