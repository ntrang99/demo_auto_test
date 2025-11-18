*** Test Cases ***
Vong lap for in
    Log To Console    Duyet danh sach trai cay
    @{danh_sach_trai_cay}   Create List     cam     quyt       mit      dua       dua       le      tao         oi
    FOR    ${trai_cay}    IN    @{danh_sach_trai_cay}
        Log To Console    Trai cay: ${trai_cay}
    END
    
Vong lap For Inrange
    Log To Console   Thong tin danh sach
    FOR    ${i}    IN RANGE    1    10    3
        Log To Console     Gia tri: ${i}
    END

Vong lap For In Enumerate
    Log To Console    Thong tin danh sach
    @{chuoi_so}     Create List      1  2   3   4   5
    FOR    ${index}    ${element}    IN ENUMERATE    @{chuoi_so}
        Log To Console  Phan tu ${index}: co gia tri la ${element}
    END

Vong lap Dictionary
    Log To Console    Danh sach tu dien
    &{my_dict}  Create Dictionary   ten=Hien    tuoi=26
    FOR    ${key}   ${value}     IN    &{my_dict}
        Log To Console  ${key}=${value}
    END