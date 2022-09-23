*** Variables ***
&{PESSOA}    nome=Soraia    idade=41 anos    altura=1,66    profissão=analista de testes    filhos=não    quantidade=0
@{celular}    Nokia    Samsung    LG    Sony Ericsson    Xiaomi    Asus
&{nota}    a=10    b=8    c=6   
@{NOTAS}    9    8    5   
*** Test Cases ***
Variável Dicionário
    Log To Console    ${PESSOA}
    Log    ${PESSOA}

Variável Lista
    Log To Console    @{celular}
    Log    @{celular}
        
Dicionário um por vez
    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.altura}
    Log To Console    ${PESSOA.profissão}
    Log To Console    ${PESSOA.filhos}
    Log To Console    ${PESSOA.quantidade}

    Log    ${PESSOA.nome}
    Log    ${PESSOA.idade}
    Log    ${PESSOA.altura}
    Log    ${PESSOA.profissão}
    Log    ${PESSOA.filhos}
    Log    ${PESSOA.quantidade}

Lista um por vez
    Log To Console    ${celular[0]}
    Log To Console    ${celular[1]}
    Log To Console    ${celular[2]}
    Log To Console    ${celular[3]}
    Log To Console    ${celular[4]}
    Log To Console    ${celular[5]}

    Log     ${celular[0]}
    Log     ${celular[1]}
    Log     ${celular[2]}
    Log     ${celular[3]}
    Log     ${celular[4]}
    Log     ${celular[5]}

Lista notas
    Log To Console    ${NOTAS}
    Log    ${NOTAS}

Lista notas um por vez
    Log To Console    ${NOTAS[0]}
    Log To Console    ${NOTAS[1]}
    Log To Console    ${NOTAS[2]}
    Log    ${NOTAS}

Média Lista
    ${NOTAS}=    Evaluate    9+8+5
    Log To Console    ${NOTAS}
    Log    ${NOTAS}

    ${NOTAS}=    Evaluate    22/3
    Log To Console    ${NOTAS}  
    Log    ${NOTAS}    
    
Dicionário notas
    Log To Console    ${nota}
    Log    ${nota}

Dicionário notas um por vez
    Log To Console    ${nota.a}
    Log To Console    ${nota.b}
    Log To Console    ${nota.c}

    Log    ${nota.a}
    Log    ${nota.b}
    Log    ${nota.c}

Média Dicionário
    ${nota}=    Evaluate    10+8+6
    Log To Console    ${nota}
    Log    ${nota}

    ${nota}=    Evaluate    24/3
    Log To Console    ${nota}  
    Log    ${nota}
