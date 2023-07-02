*** Settings **
Documentation   Arquivo de Keywords genéricas

Library     SeleniumLibrary
Library     String

*** Variables ***
${LOGIN_URL}                        https://www.alura.com.br/
${BROWSER}                          Chrome
${BROWSER_OPTIONS}                  add_experimental_option('excludeSwitches', ['enable-logging']);add_argument('--disable-dev-shm-usage');add_argument("--disable-popup-blocking");add_argument("--ignore-certificate-errors")

*** Keywords ***

Abrir o navegador no site
    Open Browser    ${LOGIN_URL}    ${BROWSER}    options=${BROWSER_OPTIONS}
    Title Should Be    Alura | Cursos online de Tecnologia
    Maximize Browser Window

Fechar o Browser    
    Close Browser 

Input Text If Element Is Visible
    [Arguments]     ${element_locator}    ${text}

    Wait Until Element Is Visible    ${element_locator}
    Input Text    ${element_locator}    ${text}


Mouse Over If Element Is Visible
    [Arguments]     ${element_locator}

    Wait Until Element Is Visible       ${element_locator}
    Mouse Over      ${element_locator}

Click If Element Is Visible
    [Arguments]     ${element_locator}
    Mouse Over If Element Is Visible    ${element_locator}
    Click Element       ${element_locator}

String Replace
    [Documentation]  Replaces the ocurrences of '$$' for the respective strings.
    [Arguments]  ${template_string}  @{replacement_strings}

    FOR    ${string}    IN    @{replacement_strings}
        ${template_string} =   Replace String    ${template_string}   $$   ${string}    count=1
    END

    [Return]    ${template_string}