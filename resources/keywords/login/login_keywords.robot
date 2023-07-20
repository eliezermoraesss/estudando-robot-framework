*** Settings ***

Resource    ${EXECDIR}/resources/pages/login_pages.robot

*** Keywords ***

Adicionar dados no campo de pesquisa da home da Alura e clicar na lupa de Pesquisa
    [Arguments]     ${texto}
    Adicionar o texto no campo de Pesquisa "O que você quer aprender?"      ${texto}   
    Clicar na lupa de Pesquisa

Contar a quantidade de itens dentro da lista retornada
    Contar os elementos da lista

Adicionar dados de Login    
    [Arguments]     ${email}    ${password}
    Adicionar um e-mail no input para login    ${email}
    Adicionar uma senha no input para login    ${password}

Clicar no botão e verificar mensagem de erro
    [Arguments]     ${mensagem_erro}
    Clicar no botão ENTRAR
    Validar mensagem de erro de login  ${mensagem_erro} 