- Chạy các file theo thứ tự sau (từ trên xuống)
- Lưu ý đăng nhập vào đúng user ở từng file (được đề cập ở đầu file thông qua câu lệnh CONN đã được chú thích lại)

1. Tạo data:
    - Data/database.sql (ATV)
    - Data/addAccount.sql (ATV)
2. Khởi tạo OLS policy:
    - Policy/labelComponents.sql (Gồm 2 user, LBACSYS và SEC_ADMIN)
    - Policy/createLabel.sql (SEC_ADMIN)
    - Policy/utilFunc.sql (SEC_ADMIN)
    - Policy/dataLabel.sql (SEC_ADMIN)
    - Policy/userLabel.sql (ATV_SEC)
3. Khởi tạo VPD policy:
    - VPD/vpd.sql (LBACSYS)
4. Kiểm tra các chính sách đã tạo
    - Verify/policy1_verify.sql (STD1)
    - Verify/policy2_verify.sql (PR2)
    - Verify/policy3_verify.sql (TCH15)
    - Verify/policy4_verify.sql (TCH12)
    - Verify/policy5_verify.sql (HD5)
    - Verify/policy6_verify.sql (DN3)
    - Verify/policy7_verify.sql (EMP_PDT)