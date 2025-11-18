*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      https://demoblaze.com/
${btn_login}    id=login2
${input_username}   id=loginusername
${input_password}    id=loginpassword
${btn_login_form}   Xpath=//button[text()='Log in']
${text_welcomeadmin}    Xpath=//a[text()='Welcome admin']
${timeout}      30s
${username_login}     admin
${password_login}     admin
${product_detail}      Xpath=//a[text()='Samsung galaxy s6']
${text_pro_detail}     Xpath=//h2[text()='Samsung galaxy s6']
${web_browser}  chrome
*** Test cases ***
Login_Demoblazer
    [Tags]  login
    Login Demoblazer    ${web_browser}   ${username_login}    ${password_login}
    Reload Page
    Choose product    ${product_detail}
    # Open browser    ${URL}   chrome
    # Wait Until Element Is Visible  ${btn_login}     ${timeout}
    #   Click element   ${btn_login}
    # Wait Until Element Is Visible  ${input_username}    ${timeout}
    # Clear Element Text   ${input_username}
    # Input Text  ${input_username}     ${username_login}
    # Wait Until Element Is Visible  ${input_password}    ${timeout}
    # Clear Element Text   ${input_password}
    #`Input Text  ${input_password}     ${password_login}
    # Wait Until Element Is Visible  ${btn_login_form}    ${timeout}
    # Click Button    ${btn_login_form}
    # Reload Page
    # Wait Until Page Contains Element    ${product}   ${timeout}
    # Click element    ${product}
    # Wait Until Element Is Visible  ${text_pro}    ${timeout}
    # Close Browser

*** Keywords ***
Open demoblazer
    [Arguments]     ${browser}
    Open Browser    ${URL}  ${browser}  # mở trang web [URL] bằng trình duyệt browser

Fill login form
    [Arguments]     ${username}   ${password}
    Common - Click element   ${btn_login}     ${timeout}
    Common - Input text     ${input_username}   ${username}     ${timeout}
    Common - Input text     ${input_password}   ${password}     ${timeout}

Submit Login form
    Common - Click element     ${btn_login_form}       ${timeout}

Verify Login success
    Wait Until Element Is Visible  ${product_detail}     ${timeout}

Choose product
    [Arguments]     ${product}
    Common - Click element    ${product}    ${timeout}

Login Demoblazer
    [Arguments]     ${browser}      ${username}      ${password}
    Open demoblazer     ${browser}
    Fill login form    ${username}    ${password}
    Submit Login form
    Verify Login success

Common - Click element
    [Arguments]     ${element}      ${timeout}
    Wait Until Element Is Visible   ${element}      ${timeout}
    Click element    ${element}

Common - Input text
    [Arguments]     ${element}      ${text}         ${timeout}
    Wait Until Element Is Visible   ${element}      ${timeout}
    Clear Element Text    ${element}
    Input Text    ${element}    ${text}


