*** Variable ***
${NOME}    Paulo
&{ANIMAL}    especie=Reptil    nome=Lagarto    quantidade=2
@{COMPRAS}    chocolate    batata frita    salgadinho    danone
*** Test Cases ***
Variavel Simples
   
    Log To Console    ${NOME}    
    Log    ${NOME}

Variavel Dicionario
    Log To Console    ${ANIMAL.especie}
    Log    ${ANIMAL.nome}

Variável Lista
    Log To Console    ${COMPRAS[0]}
    Log    ${COMPRAS[0]}

Operações
    ${resultado}=    Evaluate    2+2
    Log To Console    ${resultado}
    Log    ${resultado}

    ${resultado}=    Evaluate    2-2
    Log To Console    ${resultado}
    Log    ${resultado}

    ${resultado}=    Evaluate    2*2
    Log To Console    ${resultado}
    Log    ${resultado}

    ${resultado}=    Evaluate    2/2
    Log To Console    ${resultado}
    Log    ${resultado}




        
