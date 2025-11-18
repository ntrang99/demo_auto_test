*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Mo trinh duyet chrome
    TRY
        Open Browser    https://example.com     chrome
        Log To Console    Da mo trinh duyet chrome thanh cong
    EXCEPT
        Log To Console    Loi khi mo trinh duyet chrome - kiem tra lai driver hoac cau hinh
    ELSE
        ${status}   Run Keyword And Return Status    Title Should Be    Example Domain
        IF   ${status}  Log To Console    Dung tieu de
    END