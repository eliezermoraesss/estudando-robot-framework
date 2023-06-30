*** Settings ***

Resource    ${EXECDIR}/resources/pages/login_pages.robot

*** Keywords ***

Adicionar dados de Login    
    [Arguments]     ${email}    ${password}
    Adicionar um e-mail no input para login    ${email}
    Adicionar uma senha no input para login    ${password}

Clicar no botão e verificar mensagem de erro
    [Arguments]     ${mensagem_erro}
    Clicar no botão ENTRAR
    Validar mensagem de erro de login  ${mensagem_erro} 