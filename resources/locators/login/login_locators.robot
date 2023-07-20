*** Variables ***

${LOGIN_SESSION_TITLE}    //section[contains(@class, "sign")]//h1[normalize-space()="Já estuda com a gente?"]
${SECAO_LOGIN}            id:LoginAccess
${INPUT_EMAIL}            id:login-email
${INPUT_PASSWORD}         id:password
${BTN_LOGIN}              //button[contains(@class, "btn-login")]
${ERROR_INFO}             //div[contains(@class, "error-info")]//p[normalize-space()="$$"]
${ENTRAR_LOGIN}           //a[contains(@class, "header__nav--ctas-entrar")]
