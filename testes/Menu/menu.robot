*** Settings ***
Documentation    Nosso primeiro teste

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/keywords/header/header_keywords.robot

Suite Setup     Abrir o navegador no site     
Test Teardown       Acessar a URL da HOME
Suite Teardown       Fechar o Browser

Force Tags      menu

*** Test Cases ***

Deve ser possível acessar a página de Dev

    Selecionar um item no menu      Dev em <T>
    Validar o título da página      dev em <T>

Deve ser possível acessar a página de Formações

    Selecionar um item no menu      Nossas Formações
    Validar o título da página      Formações e cursos de tecnologia

Deve ser possível acessar a página de Empresas

    Selecionar um item no menu      Para Empresas
    Validar o título da página      Preparando talentos em tecnologia para o futuro dos negócios.
