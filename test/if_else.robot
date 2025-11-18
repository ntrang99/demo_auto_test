*** Test Cases ***
# duoc nang luong neu luong duoi 2500 va la nhan vien viettel

Basic if
    Log To Console   : Kiem tra dieu kien duoc tang luong
    ${luong}    Set Variable    1000
    IF   ${luong} < 2500
    Log To Console    Duoc nang luong
    END

TOAN TU AND
    Log To Console    : Kiem tra thoa man dieu kien nang luong voi toan tu AND
    ${luong}    Set Variable    1000
    ${employee}     Set Variable    ${True}
    IF   ${luong} < 2500 and ${employee}
        Log To Console   Chuc mung be duoc nang luong
    END

TOAN TU OR
    Log To Console      : Kiem tra nang luong theo dieu kien OR
    ${luong}    Set Variable    1000
    ${nv}       Set Variable    False
# khai bao bien nhan vien = false nghia la khong phia nv viettel
# not ${nv}: nghia la khong phai nhan vien viettel
    IF  ${luong} > 2500 or not ${nv}
        Log To Console      Khong la nhan vien cua Viettel
    END

IF ELSE
    Log To Console      : Kiem tra co phai so chan khong
    ${so}    Set Variable    1000
    IF  ${so}%2==0
        Log to console  : Day la so chan
    END

IF VA ELSE IF
    Log To Console      : Kiem tra co phai so le to khong
    ${so}   Set Variable    13.3
    IF      ${so}%2==0
        Log To Console      Day la so chan
    ELSE IF     ${so}%2==1
        Log To Console      Day la so le
    ELSE
        Log To Console      Day khong phai so nguyen
    END



