*** Settings *** 
Resource        base.robot

Test Setup      Abrir sessão
Test Teardown   Fechar sessão

***Variables***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

***Test Cases*** 
Should Click On Checkbox - ID
    [tags]      thor
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Should Click On Checkbox - CSS Selector
    [tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}

Should Click On Checkbox - XPATH
    [tags]      blackpanther
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther} 
    Checkbox Should Be Selected     ${check_panther} 
    
