# **BÀI TẬP**: [ Chuyên sâu ] Trích xuất Dữ liệu Khách hàng "Ngủ đông"

- Phân tích bài toán (I/O): Input cần quét ở bảng CUSTOMERS, output cần trả ra các cột FullName và Email. Việc sử dụng lệnh SELECT \* sẽ làm nghẽn cổ chai hệ thống vì nó sẽ truy xuất tất cả các cột (hàng chục cột) của hàng triệu bản ghi, gây tốn tài nguyên và thời gian xử lý không cần thiết, trong khi chỉ cần 2 cột là FullName và Email.
- Thiết kế giải pháp: Logic lọc dữ liệu sẽ bao gồm các điều kiện sau trong mệnh đề WHERE:
  1. City = 'Hà Nội' (chỉ lấy khách hàng ở Hà Nội)
  2. LastPurchaseDate < '2025-10-01' (chỉ lấy khách hàng đã không mua hàng hơn 6 tháng, tính từ ngày 01/04/2026)
  3. Email IS NOT NULL (loại bỏ khách hàng không có email)
  4. Status != 'Locked' (loại bỏ khách hàng có tài khoản bị khóa)

- Câu lệnh SQL sẽ được xây dựng như sau: [SQL](query.sql)
