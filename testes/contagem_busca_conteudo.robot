*** Settings ***
Documentation    Nosso primeiro teste

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/login/login_keywords.robot

Test Setup     Run Keywords     Abrir o navegador no site     AND    
...                             Validar se o menu está visível na tela        

Test Teardown       Fechar o Browser

Force Tags      menu

*** Test Cases ***

Deve buscar no campo de pesquisa por um assunto e contar os resultados encontrados

    Adicionar dados no campo de pesquisa da home da Alura e clicar na lupa de Pesquisa      Robot Framework
    Contar a quantidade de itens dentro da lista retornada
