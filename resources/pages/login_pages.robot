*** Settings ***

Library     SeleniumLibrary
Resource    ${EXECDIR}/resources/locators/login_locators.robot

*** Keywords ***

Adicionar o texto no campo de Pesquisa "O que você quer aprender?"
    [Arguments]     ${text}
    Input Text If Element Is Visible  ${INPUT_PESQUISAR}    ${text}

Clicar na lupa de Pesquisa
    Click If Element Is Visible     ${BTN_LUPA}

Contar os elementos da lista
    ${valor} =      Get Element Count   ${RESULT_LIST}
    Log     O valor é ${valor}    console=True

Clicar em um item específico do Menu da página de Login
    [Arguments]     ${text_search}
    ${element} =    String Replace  ${MENU_OPTION}  ${text_search}

    Wait Until Element Is Visible   ${element}
    Click If Element Is Visible  ${element}

Validar se o menu está visível na tela
    Wait Until Element Is Visible       ${MENU_BAR}

Validar se a seção Entrar está visível e clicar para Entrar
    [Arguments]     ${element_locator}
    Wait Until Element Is Visible       ${ENTRAR_LOGIN}
    Click If Element Is Visible         ${ENTRAR_LOGIN}

Validar se a seção de login está visível na tela    
    Wait Until Element Is Visible       ${LOGIN_SESSION_TITLE}

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
    Click If Element Is Visible     ${BTN_LOGIN}

Validar mensagem de erro de login
    [Arguments]     ${mensagem_erro}
    ${element} =    String Replace  ${ERROR_INFO}  ${mensagem_erro}  

    Wait Until Element Is Visible   ${element}