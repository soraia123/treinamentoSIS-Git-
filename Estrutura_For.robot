*** Keywords ***
Contador
    FOR    ${Count}    IN RANGE    0    10
    Log To Console    ${Count}    
    END

Contar número máximo
    [Arguments]    ${MAX}
    FOR  ${count}      IN RANGE    0    ${MAX}
        Log To Console    ${count}
    END

Lista
    [Arguments]    @{Fazenda}
    FOR    ${count}    IN    @{Fazenda}
        Log To Console    ${count}
    END
    
*** Test Cases ***
Contar de 0 a 10  
    Contador 

Crescente
    Contar número máximo    12
    Contar número máximo    22

Lista1
    Lista    @{Animais}

*** Variables ***
@{Animais}    Galinha    Porco    Cavalo
