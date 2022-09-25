*** Test Cases ***
Argumentos e retornos
    ${resultado}    Somar dois números    21    20
    Log To Console    ${resultado}

    ${resultado}    Somar dois números    11    122
    Log To Console    ${resultado}

Argumentos Embutidos
    ${RESULTADO}    Somar os números "1" e "15"
    Log To Console    ${RESULTADO}

    ${TESTE}    Dividir os números "20" e "2"
    Log To Console    ${TESTE} 

Teste de nome
    ${nome}    Criar Sobrenome    Soraia    
    Log To Console    ${nome}

    ${nome}    Criar Sobrenome    Solange    
    Log To Console    ${nome}

*** Keywords ***
Somar dois números
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}        Evaluate        ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}
Somar os números "${NUM_A}" e "${NUM_B}"
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Dividir os números "${D1}" e "${D2}"
    ${FINAL}    Evaluate    ${D1}/${D2}
    [Return]    ${FINAL}  
    

Criar Sobrenome
    [Arguments]    ${FIRST_NAME}
    [Return]    ${FIRST_NAME}    Alves dos Santos