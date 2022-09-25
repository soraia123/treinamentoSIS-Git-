*** Test Cases ***
Argumentos Soma
    ${RESULTADO}    Somar os números "111" e "111"
    Log To Console    ${RESULTADO}

Calculo Subtrai
    ${SUBTRA}    Subtrair os números "19" e "4"
    Log To Console    ${SUBTRA}

Calcular Divisão
    ${Divide}    Dividir os números "100" e "20"
    Log To Console    ${Divide}

Calcula Multiplicação
    ${Multiplicação}    Multi os números "51" e "10"
    Log To Console    ${Multiplicação} 

Cadastro de email
    ${Email}    Gerar email    soraia
    Log To Console    ${Email}    

    ${Email}    Gerar email    solange
    Log To Console    ${Email}

*** Keywords ***
Somar os números "${A}" e "${B}" 
    ${SOMA}    Evaluate    ${A}+${B}
    [Return]    ${SOMA}

Subtrair os números "${A}" e "${F}"
    ${MENOS}    Evaluate    ${A}-${F}
    [Return]    ${MENOS}

Dividir os números "${B}" e "${C}"
    ${Dividendo}    Evaluate    ${B}/${C} 
    [Return]    ${Dividendo} 

Multi os números "${0}" e "${1}"
    ${Multiplica}    Evaluate    ${0}*${1} 
    [Return]    ${Multiplica}

Gerar email
    [Arguments]    ${Endereço}
    [Return]    ${Endereço}@teste.com.br    