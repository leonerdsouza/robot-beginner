*** Settings *** 
Resource        base.robot

Test Setup      Abrir sessão
Test Teardown   Fechar sessão

***Test Cases*** 

Should Fill In Login Form - SUCESS
    Go To                           ${url}/login
    Login With                      stark       jarvis!
    Should See Logged User          Tony Stark

Should Fill In Login Form - Fail Password
    [tags]  error_password
    Go To                               ${url}/login
    Login With                          stark       JArvis!
    Should Contain Login Alert          Senha é invalida!

Should Fill In Login Form - Fail User
    [tags]  error_user
    Go To                               ${url}/login
    Login With                          Leonardo        jarvis!
    Should Contain Login Alert          O usuário informado não está cadastrado!

***Keywords***

Login With
    [Arguments]             ${uname}   ${pass}
    Input Text              css:input[name=username]    ${uname} 
    Input Text              css:input[name=password]    ${pass} 
    Click Element           class:btn-login

Should Contain Login Alert
    [Arguments]             ${expected_message}
    ${message}=             Get WebElement          id:flash
    Should Contain          ${message.text}         ${expected_message}

Should See Logged User
    [Arguments]     ${full_name}
    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!