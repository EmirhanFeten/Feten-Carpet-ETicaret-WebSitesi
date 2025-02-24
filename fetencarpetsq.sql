create database fetencarpet
USE [fetencarpet]
GO
/****** Object:  Table [dbo].[ebat]    Script Date: 7.03.2023 23:43:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ebat](
	[ebatno] [int] IDENTITY(1,1) NOT NULL,
	[ebatad] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ebatno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ikincilrenk]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ikincilrenk](
	[ikincilrno] [int] IDENTITY(1,1) NOT NULL,
	[ikincilrad] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ikincilrno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[mno] [int] IDENTITY(1,1) NOT NULL,
	[mad] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oda]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oda](
	[ono] [int] IDENTITY(1,1) NOT NULL,
	[oad] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renk]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renk](
	[rno] [int] IDENTITY(1,1) NOT NULL,
	[rad] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sekil]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sekil](
	[sekilno] [int] IDENTITY(1,1) NOT NULL,
	[sekilad] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sekilno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sepet]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepet](
	[sipNo] [int] IDENTITY(1,1) NOT NULL,
	[urunId] [int] NOT NULL,
	[adet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sipNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urunler]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urunler](
	[urunid] [int] NOT NULL,
	[urunad] [nvarchar](100) NOT NULL,
	[urunaciklama] [nvarchar](500) NOT NULL,
	[ebat_id] [int] NOT NULL,
	[r_id] [int] NOT NULL,
	[ikncilrenk_id] [int] NOT NULL,
	[o_id] [int] NOT NULL,
	[sekil_id] [int] NOT NULL,
	[stok] [int] NOT NULL,
	[fiyat] [int] NOT NULL,
	[resim] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[urunid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uye]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uye](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
	[soyad] [nvarchar](50) NOT NULL,
	[kadi] [nvarchar](50) NOT NULL,
	[sifre] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yoneticitbl]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yoneticitbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kadi] [nvarchar](50) NOT NULL,
	[sifre] [nvarchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yorum]    Script Date: 7.03.2023 23:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yorum](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
	[tur] [nvarchar](20) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[mesaj] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ebat] ON 

INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (1, N'80x150(2''6"x4''9")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (2, N'80x300(2''6"x9''8")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (3, N'120x180(3''9"x5''9")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (4, N'160x230(5''2"x7''5")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (5, N'180x280(5''9"x9''2")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (6, N'Round 90cm(2''9")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (7, N'Round 120cm(3''9")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (8, N'Round 160cm(5''2")')
INSERT [dbo].[ebat] ([ebatno], [ebatad]) VALUES (9, N'Round 180cm(5''9")')
SET IDENTITY_INSERT [dbo].[ebat] OFF
GO
SET IDENTITY_INSERT [dbo].[ikincilrenk] ON 

INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (1, N'Beyaz')
INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (2, N'Siyah')
INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (3, N'Kahverengi')
INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (4, N'Mavi')
INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (5, N'Kırmızı')
INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (6, N'Sarı')
INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (7, N'Yeşil')
INSERT [dbo].[ikincilrenk] ([ikincilrno], [ikincilrad]) VALUES (8, N'Mor')
SET IDENTITY_INSERT [dbo].[ikincilrenk] OFF
GO
SET IDENTITY_INSERT [dbo].[oda] ON 

INSERT [dbo].[oda] ([ono], [oad]) VALUES (1, N'Mutfak')
INSERT [dbo].[oda] ([ono], [oad]) VALUES (2, N'Salon')
INSERT [dbo].[oda] ([ono], [oad]) VALUES (3, N'Yatak Odası')
INSERT [dbo].[oda] ([ono], [oad]) VALUES (4, N'Banyo')
INSERT [dbo].[oda] ([ono], [oad]) VALUES (5, N'Çocuk Odası')
INSERT [dbo].[oda] ([ono], [oad]) VALUES (6, N'Hol')
INSERT [dbo].[oda] ([ono], [oad]) VALUES (7, N'Misafir Odası')
INSERT [dbo].[oda] ([ono], [oad]) VALUES (8, N'Yemek Odası')
SET IDENTITY_INSERT [dbo].[oda] OFF
GO
SET IDENTITY_INSERT [dbo].[renk] ON 

INSERT [dbo].[renk] ([rno], [rad]) VALUES (1, N'Beyaz')
INSERT [dbo].[renk] ([rno], [rad]) VALUES (2, N'Siyah')
INSERT [dbo].[renk] ([rno], [rad]) VALUES (3, N'Kahverengi')
INSERT [dbo].[renk] ([rno], [rad]) VALUES (4, N'Mavi')
INSERT [dbo].[renk] ([rno], [rad]) VALUES (5, N'Kırmızı')
INSERT [dbo].[renk] ([rno], [rad]) VALUES (6, N'Sarı')
INSERT [dbo].[renk] ([rno], [rad]) VALUES (7, N'Yeşil')
INSERT [dbo].[renk] ([rno], [rad]) VALUES (8, N'Mor')
SET IDENTITY_INSERT [dbo].[renk] OFF
GO
SET IDENTITY_INSERT [dbo].[sekil] ON 

INSERT [dbo].[sekil] ([sekilno], [sekilad]) VALUES (1, N'Daire')
INSERT [dbo].[sekil] ([sekilno], [sekilad]) VALUES (2, N'Kare')
INSERT [dbo].[sekil] ([sekilno], [sekilad]) VALUES (3, N'Dikdörtgen')
SET IDENTITY_INSERT [dbo].[sekil] OFF
GO
SET IDENTITY_INSERT [dbo].[sepet] ON 

INSERT [dbo].[sepet] ([sipNo], [urunId], [adet]) VALUES (1, 1001, 1)
INSERT [dbo].[sepet] ([sipNo], [urunId], [adet]) VALUES (2, 1003, 3)
SET IDENTITY_INSERT [dbo].[sepet] OFF
GO
INSERT [dbo].[urunler] ([urunid], [urunad], [urunaciklama], [ebat_id], [r_id], [ikncilrenk_id], [o_id], [sekil_id], [stok], [fiyat], [resim]) VALUES (1001, N'Yün Dokuma Halı', N'El Yapımı Otantik Yün Dokuma Halı', 7, 5, 1, 1, 1, 200, 500, N'../img/AS-912.jpg')
INSERT [dbo].[urunler] ([urunid], [urunad], [urunaciklama], [ebat_id], [r_id], [ikncilrenk_id], [o_id], [sekil_id], [stok], [fiyat], [resim]) VALUES (1002, N'Kaşmir Halı', N'El dokuma tarihi kaşmir halı', 5, 2, 6, 2, 3, 325, 2530, N'../img/AS-901.jpg')
INSERT [dbo].[urunler] ([urunid], [urunad], [urunaciklama], [ebat_id], [r_id], [ikncilrenk_id], [o_id], [sekil_id], [stok], [fiyat], [resim]) VALUES (1003, N'Yumurcak Halı', N'Yumurcak Çocuk Odası Halısı', 3, 1, 4, 5, 3, 300, 2500, N'../img/YMR-1003.jpg')
INSERT [dbo].[urunler] ([urunid], [urunad], [urunaciklama], [ebat_id], [r_id], [ikncilrenk_id], [o_id], [sekil_id], [stok], [fiyat], [resim]) VALUES (1004, N'Yumurcak Halı', N'Yumurcak Çocuk Odası Halısı', 4, 7, 1, 5, 3, 300, 2400, N'../img/YMR-1014.jpg')
INSERT [dbo].[urunler] ([urunid], [urunad], [urunaciklama], [ebat_id], [r_id], [ikncilrenk_id], [o_id], [sekil_id], [stok], [fiyat], [resim]) VALUES (1005, N'Yumurcak Halı', N'Yumurcak Çocuk Odası Halısı', 5, 7, 5, 5, 3, 300, 2800, N'../img/YMR-1015.jpg')
GO
SET IDENTITY_INSERT [dbo].[uye] ON 

INSERT [dbo].[uye] ([sno], [ad], [soyad], [kadi], [sifre], [mail]) VALUES (1, N'emir ', N'feten', N'emirftn', N'123', N'emirftn@gmail.com')
SET IDENTITY_INSERT [dbo].[uye] OFF
GO
SET IDENTITY_INSERT [dbo].[yoneticitbl] ON 

INSERT [dbo].[yoneticitbl] ([id], [kadi], [sifre]) VALUES (1, N'admin', N'12345678')
SET IDENTITY_INSERT [dbo].[yoneticitbl] OFF
GO
SET IDENTITY_INSERT [dbo].[yorum] ON 

INSERT [dbo].[yorum] ([sno], [ad], [tur], [mail], [mesaj]) VALUES (2, N'Emirhanfeten', N'2', N'emirhanfeten@gmail.com', N'Elinize sağlık çok güzel site olmuş')
SET IDENTITY_INSERT [dbo].[yorum] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__uye__2C032A2359A392C9]    Script Date: 7.03.2023 23:43:12 ******/
ALTER TABLE [dbo].[uye] ADD UNIQUE NONCLUSTERED 
(
	[kadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__uye__7A212904EB348BFA]    Script Date: 7.03.2023 23:43:12 ******/
ALTER TABLE [dbo].[uye] ADD UNIQUE NONCLUSTERED 
(
	[mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sepet]  WITH CHECK ADD  CONSTRAINT [fk_Urunler_Sepet] FOREIGN KEY([urunId])
REFERENCES [dbo].[urunler] ([urunid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sepet] CHECK CONSTRAINT [fk_Urunler_Sepet]
GO
ALTER TABLE [dbo].[urunler]  WITH CHECK ADD  CONSTRAINT [fk_urunler_ebat] FOREIGN KEY([ebat_id])
REFERENCES [dbo].[ebat] ([ebatno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[urunler] CHECK CONSTRAINT [fk_urunler_ebat]
GO
ALTER TABLE [dbo].[urunler]  WITH CHECK ADD  CONSTRAINT [fk_urunler_ikincilrenk] FOREIGN KEY([ikncilrenk_id])
REFERENCES [dbo].[ikincilrenk] ([ikincilrno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[urunler] CHECK CONSTRAINT [fk_urunler_ikincilrenk]
GO
ALTER TABLE [dbo].[urunler]  WITH CHECK ADD  CONSTRAINT [fk_urunler_oda] FOREIGN KEY([o_id])
REFERENCES [dbo].[oda] ([ono])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[urunler] CHECK CONSTRAINT [fk_urunler_oda]
GO
ALTER TABLE [dbo].[urunler]  WITH CHECK ADD  CONSTRAINT [fk_urunler_renk] FOREIGN KEY([r_id])
REFERENCES [dbo].[renk] ([rno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[urunler] CHECK CONSTRAINT [fk_urunler_renk]
GO
ALTER TABLE [dbo].[urunler]  WITH CHECK ADD  CONSTRAINT [fk_urunler_sekil] FOREIGN KEY([sekil_id])
REFERENCES [dbo].[sekil] ([sekilno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[urunler] CHECK CONSTRAINT [fk_urunler_sekil]
GO
