*** Settings ***
Documentation        Testes com Robot Framework

Library        SeleniumLibrary

*** Variables ***
${URL}      https://cursos.alura.com.br/
${ALTURA}       1080
${LARGURA}      1920
${BROWSER}      Chrome
${BROWSER_OPTIONS}    add_experimental_option('excludeSwitches', ['enable-logging']);add_argument('--disable-dev-shm-usage');add_argument("--disable-popup-blocking");add_argument("--ignore-certificate-errors")

*** Keywords ***

Abrir navegador no site
    Open Browser    ${URL}    ${BROWSER}    options=${BROWSER_OPTIONS}
    Set Window Size    ${LARGURA}     ${ALTURA} 

Validar title no site da Alura
    Title Should Be    Login | Alura - Cursos online de tecnologia

Fechar o Browser
    Close Browser

*** Test Cases ***
Validação de título no site da Alura
    [Setup]     Abrir navegador no site     

    Validar title no site da Alura          

    [Teardown]  Fechar o Browser