# **BÀI TẬP**: [ Chuyên sâu ] Trích xuất Dữ liệu Khách hàng "Ngủ đông"

- Phân tích bài toán (I/O):
  Input: Dữ liệu khách hàng từ bảng CUSTOMERS, bao gồm các cột như Tên, Email, Địa chỉ, Ngày mua cuối, và Status.
  Output: Danh sách Tên và Email của khách hàng ở Hà Nội, đã không mua hàng hơn 6 tháng (tính từ 01/04/2026 về trước), và không bị khóa tài khoản.
  Việc sử dụng lệnh SELECT \* sẽ là một sai lầm vì nó sẽ truy xuất tất cả các cột của bảng, gây ra lượng dữ liệu lớn không cần thiết, làm tăng thời gian truy vấn và gây nghẽn cổ chai hệ thống, đặc biệt khi bảng chứa hàng triệu bản ghi.
- Thiết kế giải pháp:
  Điều kiện lọc dữ liệu sẽ bao gồm:

1. Địa chỉ chứa "Hà Nội" để xác định khách hàng ở Hà Nội.
2. Ngày mua cuối phải nhỏ hơn ngày 01/04/2026 để xác định khách hàng đã không mua hàng hơn 6 tháng.
3. Email không được NULL để đảm bảo có địa chỉ email để gửi thư.
4. Status không được 'Locked' để loại bỏ những tài khoản bị khóa.

- Triển khai code: [SQL](query.sql)
- Câu lệnh SQL trên sẽ trả về danh sách Tên và Email của khách hàng ở Hà Nội, đã không mua hàng hơn 6 tháng, có email hợp lệ và tài khoản không bị khóa, đáp ứng đúng yêu cầu của Sếp.
