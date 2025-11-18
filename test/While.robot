*** Test Cases ***
Vong lap While don gian
    ${dem}  Set Variable    1
    WHILE   ${dem} < 5
        Log To Console   Lan lap thu ${dem}
        ${dem}  Evaluate    ${dem}+1
    END

Vong lap While gioi han
    Log To Console    Vong lap gioi han
    WHILE    True      limit=5
        Log To Console   Day la lan lap thu 5 ne
    END
    
Dung BREAK de thoat khoi vong lap
    FOR    ${i}    IN RANGE    1    10
        Log To Console    kiem tra: ${i}
            IF    $i==5
                Log To Console    Da den gia tri ${i}
                BREAK
            END
    END
    
Dung CONTINUE de bo qua gia tri
    FOR    ${j}    IN RANGE    1    7
        IF    ${j}%2 !=0
             Log To Console    Bien ${j} la so le, bo qua
             CONTINUE
        END
            Log To Console    Xu ly so chan ${j}
    END