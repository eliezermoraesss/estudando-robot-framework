*** Settings ***

Library     SeleniumLibrary
Resource    ${EXECDIR}/resources/locators/header/header_locators.robot
Resource    ${EXECDIR}/resources/locators/common_locators.robot
Resource    ${EXECDIR}/resources/locators/validacao/validacao_locators.robot

*** Keywords ***

Clicar no botão de MATRICULE-SE plano PRO
    Click If Element Is Visible         ${BTN_MATRICULA_PRO}

Adicionar um nome no input Nome Completo
    [Arguments]     ${name}
    Input Text If Element Is Visible  ${INPUT_NAME}     ${name}
    Textfield Value Should Be   ${INPUT_NAME}   ${name}

Clicar no botão IR PARA O PRÓXIMO PASSO
    Click If Element Is Visible     ${BTN_NEXT_STEP}

Validar mensagem de erro de email
    [Arguments]     ${mensagem_erro}
    ${element} =    String Replace  ${ERRO_INFO_EMAIL}  ${mensagem_erro}  

    Wait Until Element Is Visible   ${element}

Validar mensagem de erro de cpf
    [Arguments]     ${mensagem_erro}
    ${element} =    String Replace  ${ERRO_INFO_CPF}  ${mensagem_erro}  

    Wait Until Element Is Visible   ${element}

Validar mensagem de erro de telefone
    [Arguments]     ${mensagem_erro}
    ${element} =    String Replace  ${ERRO_INFO_TELEFONE}  ${mensagem_erro}  

    Wait Until Element Is Visible   ${element}
