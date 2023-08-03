*** Settings ***
Documentation    Nosso primeiro teste

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/header/header_keywords.robot
Resource    ${EXECDIR}/resources/keywords/validacao/validacao_keywords.robot

Suite Setup     Abrir o navegador no site     
Suite Teardown       Fechar o Browser

Force Tags      validacao

*** Test Cases ***

Validar as mensagens de erro dos campos de email, cpf e telefone da página de Matrícula do site da Alura
    Acessar a página de matrícula
    Escolher o plano PRO e acessar página de compra
    Preencher somente o campo nome e clicar no botão IR PARA O PRÓXIMO PASSO
    Verificar as mensagens de erro de validação dos campos  O e-mail está inválido.     Insira um CPF válido.       Insira um telefone válido.
