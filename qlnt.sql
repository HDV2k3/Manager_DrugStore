create database QLNT
go
USE [QLNT]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[macthd] [int] NOT NULL,
	[mahd] [int] NULL,
	[mathuoc] [int] NULL,
	[soluong] [int] NULL,
	[thanhtien] [int] NULL,
	[donvi] [nvarchar](50) NULL,
	[giabantheodonvi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[macthd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[mahd] [int] NOT NULL,
	[trangthai] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[giothanhtoan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThuoc](
	[malt] [int] NOT NULL,
	[tenlt] [nvarchar](50) NULL,
	[mota] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[malt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[mancc] [int] NOT NULL,
	[tenncc] [nvarchar](50) NULL,
	[loaincc] [nvarchar](50) NULL,
	[mota] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[gioitinh] [nvarchar](5) NULL,
	[diachi] [nvarchar](max) NULL,
	[hinhanh] [varbinary](max) NULL,
	[chucvu] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapHang](
	[manhaphang] [int] NOT NULL,
	[mathuoc] [int] NULL,
	[donvinhap] [nvarchar](50) NULL,
	[giatriquydoi] [int] NULL,
	[soluongnhap] [int] NULL,
	[gianhap] [bigint] NULL,
	[mota] [nvarchar](max) NULL,
	[ngaynhap] [datetime] NULL,
	[thanhtien] [bigint] NULL,
	[username] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[manhaphang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thuoc](
	[mathuoc] [int] NOT NULL,
	[malt] [int] NULL,
	[mancc] [int] NULL,
	[tenthuoc] [nvarchar](50) NULL,
	[hamluong] [varchar](50) NULL,
	[quycachdonggoi] [nvarchar](50) NULL,
	[hangsx] [nvarchar](50) NULL,
	[donvicoban] [nvarchar](50) NULL,
	[soluong] [int] NULL,
	[giaban] [bigint] NULL,
	[mota] [nvarchar](max) NULL,
	[hinhanh] [varbinary](max) NULL,
	[hansd] [datetime] NULL,
	[donviban] [nvarchar](50) NULL,
	[giatriquydoi] [int] NULL,
	[giabantheodvban] [bigint] NULL,
	[soluongtheodvban] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mathuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
insert into nhanvien values('admin','21-23-2f-29-7a-57-a5-a7-43-89-4a-0e-4a-80-1f-c3',null,null,'Nam',null,null,'admin')
go
insert into nhanvien values('admin','admin',null,null,'Nam',null,null,'admin')
go
