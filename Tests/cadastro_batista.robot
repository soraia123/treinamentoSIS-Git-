*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${mensagem_sucesso} =    Usuário Criado com sucesso

*** Test Cases ***
Cenário Cadastro de novo cliente
#Abrir o navegador. Ex. Chrome, ie, firefox
    Open Browser    https://automacaocombatista.herokuapp.com/users/new    chrome
#Maximizar o navegador
    Maximize Browser Window
#Definir tempo máximo de espera
    Set Selenium Timeout    60
    Input Text    id=user_name    Maria
    Input Text    xpath=//input[@id="user_lastname"]    Silva
    Input Text    xpath=//input[@name="user[email]"]    cavocem466@inkmoto.com
    Input Text    xpath=//input[@name="user[address]"]    Roberto freire, 92
    Input Text    xpath=//input[@name="user[university]"]    ABC
    Input Text    xpath=//input[@name="user[profile]"]    Professora
    Input Text    xpath=//input[@name="user[gender]"]    Feminino
    Input Text    xpath=//input[@name="user[age]"]    24
#Clicar no elemento
    Click Element    xpath=//input[@name="commit" and @value="Criar"]
#Retorna o texto do elemento e atribui a uma variável 
    ${mensagem_atual} =    Get Text    xpath=//p[@id="notice"]
#Comparar dois valores: esperado e atual
    Should Be Equal    ${mensagem_sucesso}    ${mensagem_atual}
#Tirar um print da tela
    Capture Page Screenshot
#Fecha o navegador atual
    Close Browser
