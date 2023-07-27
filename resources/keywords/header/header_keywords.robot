*** Settings ***

Resource    ${EXECDIR}/resources/pages/header/header_pages.robot

*** Keywords ***

Adicionar dados no campo de pesquisa da home da Alura e clicar na lupa de Pesquisa
    [Arguments]     ${texto}
    Adicionar o texto no campo de Pesquisa "O que você quer aprender?"      ${texto}   
    Clicar na lupa de Pesquisa

Selecionar um item no menu
    [Arguments]     ${item}
    Clicar em um item específico do Menu da página de Login     ${item}

Acessar a página de matrícula
    Clicar no botão de MATRICULE-SE


    
