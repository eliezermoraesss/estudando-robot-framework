*** Settings ***
Documentation    Nosso primeiro teste

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/header/header_keywords.robot
Resource    ${EXECDIR}/resources/keywords/busca/busca_keywords.robot

Test Setup     Abrir o navegador no site       

Test Teardown       Fechar o Browser

Force Tags      menu

*** Test Cases ***

Deve buscar no campo de pesquisa por um assunto e contar os resultados encontrados

    Adicionar dados no campo de pesquisa da home da Alura e clicar na lupa de Pesquisa      Robot Framework
    Validar a quantidade de itens retornados na busca   25
