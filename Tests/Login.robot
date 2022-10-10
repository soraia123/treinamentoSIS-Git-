*** Settings ***

Library           SeleniumLibrary

*** Test Cases ***
Cenário: Login na Aplicação
    #Abrir o navegador
    Open Browser    http://automationpractice.com/index.php        chrome
    #Maximizar o navegador
    Maximize Browser Window
    #Clicar no Elemento
    Click Element    xpath=//a[@class='login']
    #Inserir um texto no elemento
    Input Text    id=email    ramomi5295@migonom.com
    Input Text    id=passwd    teste@123
    Click Element    id=SubmitLogin
    #Validar se existe um texto na tela
    Page Should Contain    Maria Silva
    #Tirar um print da tela
    Capture Page Screenshot
    #Fechar o navegador
    Close Browser


