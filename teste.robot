** Settings **
Library  SeleniumLibrary
Suite Setup  Set Selenium Implicit Wait  10s  # Configuração global de espera para 10 segundos por um elemento

** Variables **
${linkLogin}  xpath://a[@href='/login']
${btnLogin}  id:btnLogin
${campoEmail}  id:user
${campoSenha}  id:password

** Keywords **

Abrir Site
    Open Browser  https://automationpratice.com.br/  chrome

Clicar na opção Login
    Click Element  ${linkLogin}  

Preencher email
    [Arguments]  ${email}
    Input Text  ${campoEmail}  ${email} 
    
Preencher senha         
    [Arguments]  ${senha}
    Input Text  ${campoSenha}  ${senha}

Clicar em login
    Click Element  ${btnLogin}


** Test Cases **
Cenário 1: Login com dados válidos
    Abrir Site
    Clicar na opção Login
    Preencher email  teste@teste.com 
    Preencher senha  123456
    Clicar em login