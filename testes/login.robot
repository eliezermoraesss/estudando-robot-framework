*** Settings ***
Documentation    Nosso primeiro teste

Library    FakerLibrary     locale=pt_BR
Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/login/login_keywords.robot

Test Setup     Run Keywords     Abrir o navegador no site     AND    Validar se a seção Entrar está visível e clicar para Entrar
...                             Validar se a seção de login está visível na tela

Test Teardown       Fechar o Browser

Force Tags      xablau

*** Test Cases ***

Deve ser exibido um erro quando um usuário não cadastrado tenta logar no site da Alura 

    ${email} =  FakerLibrary.Email
    ${password} =   FakerLibrary.Password

    Adicionar dados de Login    ${email}    ${password}
    Clicar no botão e verificar mensagem de erro    E-mail ou senha incorretos.
    
