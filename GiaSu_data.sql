USE [GiaSu]
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (1, N'gs1', N'matkhau1', N'GiaSu')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (2, N'gs2', N'matkhau2', N'GiaSu')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (3, N'hv1', N'matkhau3', N'HocVien')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (4, N'admin', N'admin123', N'Admin')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[GiaSu] ([MaGS], [MaTK], [HoTen], [TrinhDo], [KinhNghiem], [KhuVucDay], [HocPhi], [GioRanh], [SoLuongMon]) VALUES (1, 1, N'Nguyễn Văn A', N'Cử nhân Toán', 2, N'Hà Nội', 150000, N'Tối Thứ 2,4,6', 1)
INSERT [dbo].[GiaSu] ([MaGS], [MaTK], [HoTen], [TrinhDo], [KinhNghiem], [KhuVucDay], [HocPhi], [GioRanh], [SoLuongMon]) VALUES (2, 2, N'Trần Thị B', N'Cử nhân Văn', 3, N'Hồ Chí Minh', 200000, N'Chiều Thứ 3,5', 2)
GO
INSERT [dbo].[HocVien] ([MaHV], [MaTK], [HoTen], [Lop]) VALUES (1, 3, N'Lê Văn C', N'Lớp 8')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (1, N'Toán')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (2, N'Văn')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (3, N'Anh')
GO
INSERT [dbo].[GiaSu_MonHoc] ([MaGS], [MaMH]) VALUES (1, 1)
INSERT [dbo].[GiaSu_MonHoc] ([MaGS], [MaMH]) VALUES (2, 2)
INSERT [dbo].[GiaSu_MonHoc] ([MaGS], [MaMH]) VALUES (2, 3)
GO
SET IDENTITY_INSERT [dbo].[YeuCauDay] ON 

INSERT [dbo].[YeuCauDay] ([MaYC], [MaHV], [MaMH], [KhuVuc], [ThoiGian], [TrangThai]) VALUES (4, 1, 1, N'Hà Nội', N'Tối Thứ 2,4', N'Dang tim')
INSERT [dbo].[YeuCauDay] ([MaYC], [MaHV], [MaMH], [KhuVuc], [ThoiGian], [TrangThai]) VALUES (5, 1, 3, N'Hà Nội', N'Cuối tuần', N'Dang tim')
SET IDENTITY_INSERT [dbo].[YeuCauDay] OFF
GO
