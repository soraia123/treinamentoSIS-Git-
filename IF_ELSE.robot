*** Test Cases ***
Validar Idade
    Verifica Maior Idade    17

Verificar Par ou Impar
    @{Numeros}    Create List    1    2    3    4    5    6    7    8    9    10
    Verificar Par ou Impar     @{Numeros}

*** Keywords ***
Verifica Maior Idade    
    [Arguments]    ${Idade}
    IF  '${Idade}' >= "18"
        Log To Console    ${Idade} Maior de idade.
    ELSE
        Log To Console    ${Idade} Menor de idade.
    END

Verificar Par ou Impar
    [Arguments]    @{Numeros}
    FOR  ${Numero_Atual}  IN  @{Numeros}
        ${Resultado}=     evaluate    ${Numero_Atual}%2
        IF  '${Resultado}' == "0"
            Log To Console    ${Numero_Atual} é Par.
        ELSE
            Log To Console    ${Numero_Atual} é Impar.            
        END
    END
    
