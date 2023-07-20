*** Settings ***

Resource    ${EXECDIR}/resources/pages/busca/busca_pages.robot

*** Keywords ***

Validar a quantidade de itens retornados na busca
    [Arguments]     ${qtd_itens_paginacao}
    Validar se existem itens visíveis na tela de busca de cursos
    Validar a quantidade de itens da paginação da tela de busca    ${qtd_itens_paginacao}
