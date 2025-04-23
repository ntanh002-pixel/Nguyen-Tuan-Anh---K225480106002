# Nguyen-Tuan-Anh---K225480106002
## A. Trình bày lại đầu bài của đồ án PT&TKHT:
Tên đề tài:
- Phân tích thiết kế hệ thống ứng dụng hỗ trợ tìm gia sư theo môn học cho sinh viên
- Y/C:
  + Cho phép người dùng đăng ký và đăng nhập với vai trò Gia sư, Học viên hoặc Admin.
  + Gia sư có thể cập nhật hồ sơ dạy học: họ tên, trình độ, kinh nghiệm, khu vực, môn dạy, học phí, và thời gian rảnh.
  + Học viên tìm kiếm gia sư theo môn học, khu vực, học phí và thời gian phù hợp.
  + Học viên gửi yêu cầu tìm gia sư, hệ thống lưu lại yêu cầu và trạng thái ghép nối.
  + Admin có thể theo dõi và quản lý tài khoản, môn học, và yêu cầu.

Bảng Taikhoan:
CK--> VaiTro
![image](https://github.com/user-attachments/assets/9d9fbd53-e763-447a-8e8d-5d6fa6b2dacf)

Bảng GiaSu:
CK--> KinhNghiem
![image](https://github.com/user-attachments/assets/9fab9587-c578-433d-8f26-6b983e8f8b56)

Bảng HocVien

![image](https://github.com/user-attachments/assets/9018a58e-d4ee-4cb3-a859-302ef2c025ed)

Bảng MonHoc

![image](https://github.com/user-attachments/assets/9cfd570e-d963-413f-9f99-13a6778c8f56)

Bảng GiaSu_MonHoc

![image](https://github.com/user-attachments/assets/5c3b9d5d-2d83-4c6e-9542-a72b2910be2f)

Bảng YeuCauDay
CK--> TrangThai
![image](https://github.com/user-attachments/assets/e269f0be-514f-47b5-a282-47696209c347)

Bảng Diagram

![image](https://github.com/user-attachments/assets/eeba8287-576f-4249-8e6a-b59d882fd0e3)

B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.


Hướng dẫn làm phần B:
1. Sv tạo repo mới trên github, cho phép truy cập public.
2. Tạo file Readme.md, đầu file để thông tin cá nhân sv.
3. Tiếp theo đưa phần A vào file Reame.md .
3. Các thao tác làm trên csdl bằng phần mềm ssms.
4. Chụp ảnh màn hình quá trình làm.
5. Paste ngay vào Readme.md, 
   rồi gõ mô tả ảnh này làm gì, nhập gì, hay đạt được điều gì...
6. Có thể thêm những nhận xét hoặc kết luận
   cho việc bản thân đã hiểu rõ thêm về 1 vấn đề gì đó.
7. Lặp lại các step 4 5 6 cho đến khi hoàn thành yêu cầu của phần B.
8. Xuất các file sql chứa cấu trúc và data, up lên cùng repo.
9. Link đến repo cần mở được trực tiếp nội dung, 
   Paste link này vào file excel online ghim trên nhóm.
   Thầy sẽ dùng tool để check các link này.

- thêm trường phi chuẩn vào bảng gia sư:
![image](https://github.com/user-attachments/assets/0faefb99-994c-4e8d-903f-a9e0bdbc887b)

- viết trigger cập nhật SoLuongMon mỗi khi thay đổi bảng GiaSu_MonHoc:
  + Tạo trigger sau khi INDERT :
    ![image](https://github.com/user-attachments/assets/81a0cb53-ba10-49cf-9c83-7c622fd84091)

  + Tạo Trigger sau khi DELETE:
    ![image](https://github.com/user-attachments/assets/10dbfafe-1cb4-46bb-9422-e4093876c647)

- Kiểm tra Trigger bằng dữ liệu test
  + Thêm môn học cho gia sư MaGS = 2:
   ![image](https://github.com/user-attachments/assets/e90dcad1-e209-4645-9f64-756b896a859c)

  + Xoá môn khỏi gia sư MaGS = 1
    ![image](https://github.com/user-attachments/assets/c088736d-bc12-4f1b-bb19-ccf90354d65b)

- Kết luận
- Trigger đã hỗ trợ:
 • Tự động duy trì tính nhất quán dữ liệu
 • Giúp hệ thống có thể nhanh chóng truy xuất được số lượng môn dạy của từng gia sư.
 • Tránh được việc lập trình thủ công mỗi lần thêm/xóa dữ liệu.
 • Góp phần nâng cao hiệu năng trong tìm kiếm, xếp lớp, thống kê…
