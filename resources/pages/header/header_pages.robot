*** Settings ***

Library     SeleniumLibrary
Resource    ${EXECDIR}/resources/locators/header/header_locators.robot

*** Keywords ***

Adicionar o texto no campo de Pesquisa "O que você quer aprender?"
    [Arguments]     ${text}
    Input Text If Element Is Visible  ${INPUT_PESQUISAR}    ${text}

Clicar na lupa de Pesquisa
    Click If Element Is Visible     ${BTN_LUPA}

Clicar em um item específico do Menu da página de Login
    [Arguments]     ${text_search}
    ${element} =    String Replace  ${MENU_OPTION}  ${text_search}

    Click If Element Is Visible  ${element}

Validar se o menu está visível na tela
    Wait Until Element Is Visible       ${MENU_BAR}

Clicar no botão de MATRICULE-SE
    Click If Element Is Visible     ${BTN_MATRICULA}  
