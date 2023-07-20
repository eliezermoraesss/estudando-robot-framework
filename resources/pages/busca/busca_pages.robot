*** Settings ***

Library     SeleniumLibrary
Resource    ${EXECDIR}/resources/locators/busca/busca_locators.robot

*** Keywords ***

Validar a quantidade de itens da paginação da tela de busca
    [Arguments]     ${qtd_itens_paginacao}

    ${valor} =      Get Element Count   ${RESULT_LIST}
    ${valor_paginacao} =    Convert To Integer  ${qtd_itens_paginacao}
    Should Be Equal     ${valor}    ${valor_paginacao}
    
Validar se existem itens visíveis na tela de busca de cursos
    Wait Until Element Is Visible   ${RESULT_LIST}
