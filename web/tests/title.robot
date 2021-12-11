*** Settings *** 
Resource        base.robot

Test Setup      Abrir sessão
Test Teardown   Fechar sessão

***Test Cases*** 
Should See Page Title
    Title Should Be     Training Wheels Protocol