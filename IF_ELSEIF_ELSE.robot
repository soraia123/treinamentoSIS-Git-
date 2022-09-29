*** Test Cases ***
Imprimir Numeros
    @{Numeros}    Create List    1    2    3    4    5    6    7    8    9    10
    Verificar Numeros    @{Numeros}

*** Keywords ***
Verificar Numeros
    [Arguments]    @{Numeros}
    FOR  ${Numero_Atual}    IN  @{Numeros}
        IF  '${Numero_Atual}' == "5"
            Log To Console  Estou no número ${Numero_Atual}
        ELSE IF    '${Numero_Atual}' == "8"
            Log To Console  Estou no número ${Numero_Atual}
        ELSE
            Log To Console  Os numeros 5 e 8 não foram encontrados!
        END
    END
    