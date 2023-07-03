*** Settings ***
Documentation    Nosso primeiro teste

Library    FakerLibrary     locale=pt_BR
Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/login/login_keywords.robot

Test Setup     Run Keywords     Abrir o navegador no site     AND    
...                             Validar se o menu está visível na tela        

Test Teardown       Fechar o Browser

Force Tags      menu

*** Test Cases ***

Deve acessar a página correspondente ao texto da barra de menus da Home do site da Alura que deve ser passado no teste

    Clicar em um item específico do Menu da página de Login     Dev
