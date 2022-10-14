*** Settings ***

Library           SeleniumLibrary

*** Test Cases ***
Cenário: Sign in conta cadastrada
#Abrir navegador
    Open Browser    http://automationpractice.com/index.php    chrome
#Maximizar navegador
    Maximize Browser Window
#Definir tempo maximo de espera
    Set Selenium Timeout    60
#Clicar no elemento
    Click Element    xpath=//a[@class='login' and @title='Log in to your customer account']
#Inserir email
     Wait Until Element Is Visible    id=email_create
    Input Text    xpath=//input[@type='text' and @id='email_create']    ramomi52954@migonom.com
#Clicar no elemento
    Click Element    xpath=//i[@class='icon-user left'] 
#Clicar no elemento radiobutton
    Wait Until Element Is Visible    id=id_gender1
    Click Element    xpath=//input[@type='radio' and @id='id_gender1'] 
    Click Element    xpath=//input[@id='id_gender1']
#Inserir Texto
    Input Text    xpath=//input[@type='text'and @id='customer_firstname']    Maria
    Input Text    xpath=//input[@type='text'and @id='customer_lastname']    Silveira
#Email preenchido
#Inserir Senha
    Input Text    xpath=//input[@type='password' and @name='passwd']    12345
#Seleciona dia
    Click Element    xpath=//select[@id='days' and @class='form-control']
    Click Element    xpath=//option[@value='15']
#Seleciona mes
    Select From List By Value    id=months    5
#Seleciona ano
    Select From List By Value    id=years    2011
#Inserir Texto
    Input Text    xpath=//input[@type='text' and @id='firstname']    Jandira
    Input Text    xpath=//input[@type='text' and @id='lastname']    Costa
    Input Text    xpath=//input[@type='text' and @id='company']    ABC
    Input Text    xpath=//input[@type='text' and @name='address1']    Dantas Mendes
    Input Text    xpath=//input[@type='text' and @name='address2']    Outros
    Input Text    xpath=//input[@type='text' and @name='city']    São Paulo
    Select From List By Value    name=id_state    6
    Input Text    xpath=//input[@name='postcode']    54321
    Input Text    xpath=//textarea[@class='form-control']    Teste de automação
    Input Text    xpath=//input[@class='form-control' and @name='phone']    765432189
    Input Text    xpath=//input[@class='form-control' and @name='phone_mobile']    987654321
    Input Text    xpath=//input[@name='alias' and @value='My address']    USA
    Click Element    xpath=//button[@id='submitAccount' and @class='btn btn-default button button-medium'] 
#Tirar um print da tela
    Capture Page Screenshot
#Fecha o navegador atual
    Close Browser   
