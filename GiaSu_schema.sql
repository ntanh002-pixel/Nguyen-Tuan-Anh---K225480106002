USE [GiaSu]
GO
/****** Object:  Table [dbo].[GiaSu]    Script Date: 4/23/2025 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSu](
	[MaGS] [int] NOT NULL,
	[MaTK] [int] NULL,
	[HoTen] [nvarchar](100) NULL,
	[TrinhDo] [nvarchar](50) NULL,
	[KinhNghiem] [int] NULL,
	[KhuVucDay] [nvarchar](100) NULL,
	[HocPhi] [int] NULL,
	[GioRanh] [nvarchar](100) NULL,
	[SoLuongMon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaSu_MonHoc]    Script Date: 4/23/2025 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSu_MonHoc](
	[MaGS] [int] NOT NULL,
	[MaMH] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGS] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocVien]    Script Date: 4/23/2025 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocVien](
	[MaHV] [int] NOT NULL,
	[MaTK] [int] NULL,
	[HoTen] [nvarchar](100) NULL,
	[Lop] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 4/23/2025 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [int] NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/23/2025 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[VaiTro] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCauDay]    Script Date: 4/23/2025 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCauDay](
	[MaYC] [int] IDENTITY(1,1) NOT NULL,
	[MaHV] [int] NULL,
	[MaMH] [int] NULL,
	[KhuVuc] [nvarchar](100) NULL,
	[ThoiGian] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaYC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GiaSu] ADD  DEFAULT ((0)) FOR [SoLuongMon]
GO
ALTER TABLE [dbo].[GiaSu]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[GiaSu_MonHoc]  WITH CHECK ADD FOREIGN KEY([MaGS])
REFERENCES [dbo].[GiaSu] ([MaGS])
GO
ALTER TABLE [dbo].[GiaSu_MonHoc]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[HocVien]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[YeuCauDay]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HocVien] ([MaHV])
GO
ALTER TABLE [dbo].[YeuCauDay]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[GiaSu]  WITH CHECK ADD CHECK  (([KinhNghiem]>=(0)))
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD CHECK  (([VaiTro]='Admin' OR [VaiTro]='HocVien' OR [VaiTro]='GiaSu'))
GO
ALTER TABLE [dbo].[YeuCauDay]  WITH CHECK ADD  CONSTRAINT [CK_YeuCauDay_TrangThai] CHECK  (([TrangThai]=N'Da ghep' OR [TrangThai]=N'Dang tim'))
GO
ALTER TABLE [dbo].[YeuCauDay] CHECK CONSTRAINT [CK_YeuCauDay_TrangThai]
GO
/****** Object:  Trigger [dbo].[trg_Delete_GiaSu_MonHoc]    Script Date: 4/23/2025 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_Delete_GiaSu_MonHoc]
ON [dbo].[GiaSu_MonHoc]
AFTER DELETE
AS
BEGIN
    DECLARE @MaGS INT;

    SELECT @MaGS = MaGS FROM deleted;

    UPDATE GiaSu
    SET SoLuongMon = (
        SELECT COUNT(*) 
        FROM GiaSu_MonHoc 
        WHERE MaGS = @MaGS
    )
    WHERE MaGS = @MaGS;
END;
GO
ALTER TABLE [dbo].[GiaSu_MonHoc] ENABLE TRIGGER [trg_Delete_GiaSu_MonHoc]
GO
/****** Object:  Trigger [dbo].[trg_Insert_GiaSu_MonHoc]    Script Date: 4/23/2025 7:22:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_Insert_GiaSu_MonHoc]
ON [dbo].[GiaSu_MonHoc]
AFTER INSERT
AS
BEGIN
    DECLARE @MaGS INT;

    SELECT @MaGS = MaGS FROM inserted;

    UPDATE GiaSu
    SET SoLuongMon = (
        SELECT COUNT(*) 
        FROM GiaSu_MonHoc 
        WHERE MaGS = @MaGS
    )
    WHERE MaGS = @MaGS;
END;
GO
ALTER TABLE [dbo].[GiaSu_MonHoc] ENABLE TRIGGER [trg_Insert_GiaSu_MonHoc]
GO
