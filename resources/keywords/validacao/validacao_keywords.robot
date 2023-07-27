*** Settings ***

Library     FakerLibrary    locale=pt_BR
Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/pages/validacao/validacao_pages.robot

*** Keywords ***

Escolher o plano PRO e acessar página de compra
    Validar o título da página      Aproveite os últimos dias com o preço atual
    Clicar no botão de MATRICULE-SE plano PRO

Preencher somente o campo nome e clicar no botão IR PARA O PRÓXIMO PASSO
    ${name} =   FakerLibrary.Name
    Adicionar um nome no input Nome Completo    ${name}
    Clicar no botão IR PARA O PRÓXIMO PASSO

Verificar as mensagens de erro de validação dos campos
    [Arguments]     ${mensagem_erro_email}      ${mensagem_erro_cpf}    ${mensagem_erro_telefone}
    Validar mensagem de erro de email   ${mensagem_erro_email}
    Validar mensagem de erro de cpf     ${mensagem_erro_cpf}
    Validar mensagem de erro de telefone    ${mensagem_erro_telefone}


