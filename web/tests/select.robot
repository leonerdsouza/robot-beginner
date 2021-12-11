*** Settings *** 
Resource        base.robot

Test Setup      Abrir sessão
Test Teardown   Fechar sessão

***Test Cases*** 
Should Select By Text and Validate By Value
    Go To                               ${url}/dropdown
    Select From List By Label           class:avenger-list                  Scott Lang
    ${selected}=                        Get Selected List Value             class:avenger-list 
    Should Be Equal                     ${selected}                         7             



Should Select By Value and Validate By Text
    Go To                               ${url}/dropdown
    Select From List By Value           id:dropdown                 6
    Get Selected List Value             id:dropdown  
    ${selected}=                        Get Selected List Label     id:dropdown 
    Should Be Equal                     ${selected}                 Loki             
