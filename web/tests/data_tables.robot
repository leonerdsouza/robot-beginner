*** Settings *** 
Resource        base.robot

Test Setup      Abrir sessão
Test Teardown   Fechar sessão

***Test Cases*** 
Verify Row Number
    Go To                               ${url}/tables
    Table Row Should Contain            id:actors   1   	$ 10.000.000

Find the row by key text and validate its value
    Go To               ${url}/tables
    ${target}=          Get WebElement      xpath:.//tr[contains(., '@robertdowneyjr')]
    Log                 ${target.text}
    Log To Console      ${target.text}  
    Should Contain      ${target.text}      $ 10.000.000
    Should Contain      ${target.text}      Homem de Ferro