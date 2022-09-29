*** Test Cases ***
Validar Carro
    Condicional Simples    Automóvel

Validar idade
    Faixa    18

Lista
    @{lista}    Create List    2    4    6    8    10    5
    Verificando a lista    @{lista}

*** Keywords ***
Condicional Simples
    [Arguments]    ${veiculo}
    IF  '${veiculo}' == "Automóvel"
    Log To Console    Encontrei um veículo do tipo Automóvel!        
    END
Faixa
   [Arguments]    ${idade}
    IF  '${idade}' >= "18"
    Log To Console    ${idade} anos é maior de idade!      
    END  
Verificando a lista
    [Arguments]    @{lista}
    FOR  ${count}  IN  @{lista}
        IF  '${count}' >= '5'
            Log To Console    ${count}/sucesso            
        END
        
    
    END
    



