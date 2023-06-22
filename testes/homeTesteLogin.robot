*** Settings **
Documentation    Nosso primeiro teste

Library    SeleniumLibrary

Force Tags      xablau

Test Setup     Run Keywords     Abrir o navegador no site     AND    
...                             Validar se a seção de login está visível na tela

Test Teardown       Fechar o Browser

*** Variables ***
${LOGIN URL}                        https://cursos.alura.com.br/ 
${BROWSER}                          Chrome
${BROWSER_OPTIONS}                  add_experimental_option('excludeSwitches', ['enable-logging']);add_argument('--disable-dev-shm-usage');add_argument("--disable-popup-blocking");add_argument("--ignore-certificate-errors")
${LOGIN_SESSION_TITLE}              //section[contains(@class, "sign")]//h1[normalize-space()="Já estuda com a gente?"]


${SECAO_LOGIN}            id:LoginAccess
${INPUT_EMAIL}            id:login-email
${INPUT_PASSWORD}         id:password
${BTN_LOGIN}              //button[contains(@class, "btn-login")]
${ERROR_INFO}             //div[contains(@class, "error-info")]//p[normalize-space()="E-mail ou senha incorretos."]


*** Keywords ***
Logar um texto
    [Arguments]    ${texto}
    Log    ${texto}

Abrir o navegador no site
    Open Browser    ${LOGIN URL}    ${BROWSER}    options=${BROWSER_OPTIONS}
    Title Should Be    Login | Alura - Cursos online de tecnologia
    Maximize Browser Window

Fechar o Browser    
    Close Browser 

Validar se a seção de login está visível na tela    
    Wait Until Element Is Visible       ${LOGIN_SESSION_TITLE}

Input Text If Element Is Visible
    [Arguments]     ${element_locator}    ${text}

    Wait Until Element Is Visible    ${element_locator}
    Input Text    ${element_locator}    ${text}

Adicionar um e-mail no input para login
    [Arguments]    ${email}

    Input Text If Element Is Visible    ${INPUT_EMAIL}    ${email}
    Textfield Value Should Be    ${INPUT_EMAIL}    ${email}

Validar se o campo de senha está visível na tela de login
    Wait Until Element Is Visible    ${INPUT_PASSWORD}

Adicionar uma valor no input de senha
    [Arguments]    ${input_password_locator}    ${password}

    Input Password    ${input_password_locator}    ${password}
    Textfield Value Should Be    ${input_password_locator}    ${password}

Adicionar uma senha no input para login
    [Arguments]    ${password}
    
    Validar se o campo de senha está visível na tela de login
    Adicionar uma valor no input de senha    ${INPUT_PASSWORD}    ${password}

Clicar no botão ENTRAR
    Wait Until Element Is Visible   ${BTN_LOGIN}
    Click Element   ${BTN_LOGIN}

Validar mensagem de erro de login
    Wait Until Element Is Visible   ${ERROR_INFO}

*** Test Cases ***

Deve ser exibido um erro quando um usuário não cadastrado tenta logar no site da Alura   
    Adicionar um e-mail no input para login    novousuario@test.com
    Adicionar uma senha no input para login    xablau@teste23*
    Clicar no botão ENTRAR
    Validar mensagem de erro de login
