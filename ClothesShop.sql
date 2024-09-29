

USE [Clothes_Shop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Top')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Bottom')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Jacket''S')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Accessories')

SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(1, N'DRAWING SHIRT', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/072024/1721808825187.webp', 100.0000,
N'Áo sơ mi', 
N'Áo dài tay cổ đức, nẹp bổ trụ, phần lá cổ được thiết kế nhỏ hơn so với các áo sơmi cơ bản.', 
1, 1)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(2, N'DRAWING TROUSER', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/072024/1722039404531.webp', 120.0000,
N'Quần dài ', N'Form dáng: Semi Wide.
Chất liệu: Vải sợi bán tổng hợp. Sử dụng nguyên liệu vải có hiệu ứng dệt vân chéo.
Thân trước quần có 1 nắp túi trang trí cách điệu ở bên phải.',
2, 6)


INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(3, N'BUGS LOGO TEE', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/062024/1718802747039.webp', 
249.0000, N'Áo in hình con bọ',
N'Bugs Logo Tee là sự kết hợp giữa tinh thần hiện đại của SSStutter và nét hoài cổ của nhân vật hoạt hình Bugs Bunny.
Chiếc áo này không chỉ là trang phục, mà còn là cầu nối giữa quá khứ và hiện tại, 
gợi nhớ về những kỷ niệm tuổi thơ đầy vui vẻ và hồn nhiên.
Chất liệu: Cotton 250gsm dày dặn, thoáng khí - thấm hút mồ hôi.Vải đã được xử lý hạn chế co sau giặt.
Form dáng: Loose.Hình in Bugs Bunny ở ngực trái khi mặc.Hình thêu nhỏ logo SSS x Bugs Bunny ở sau lưng.
Chữ thêu "You look good" thêu tiệp màu vải chính ở cửa tay bên trái khi mặc.3 màu: Oliu - Be - Ghi xám', 
1, 7);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(4, N'BEAU KHAKI PANTS', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/072024/1721445037067.webp', 
359.100, N'Quần dài khaki', N'Beau Khaki Pants được lấy cảm hứng từ phong cách Ivy League,
hướng tới những người trẻ thông minh, tự do và không gò bó. Beau trong tiếng Pháp cũng có nghĩa là "Bảnh Bao". 
Chiếc quần này là biểu tượng cho sự thoải mái, tiện dụng và phong cách tối giản nhưng không kém phần tinh tế.',
2, 1);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(5, N'BUGS SHIRT', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/072024/1721103753970.webp', 
249.500, N'Áo sơ mi có họa tiết chữ', N'Bugs Shirt là sự kết hợp hoàn hảo giữa tinh thần hiện đại của SSStutter 
và di sản hoạt hình huyền thoại của Bugs Bunny. Chiếc áo này không chỉ là trang phục,
mà còn là cầu nối giữa quá khứ và hiện tại, gợi nhớ về những kỷ niệm tuổi thơ đầy vui vẻ và tiếng cười.',
1, 6);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES
(6, N'SAINT JEANS', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/062024/1718802110385.webp', 
349.000, N'Quần jeans suông ',
N'Saint Jeans được lấy cảm hứng từ sự năng động và tự do của tuổi trẻ, 
kết hợp với tinh thần hiện đại và xu hướng thời trang mới nhất.
Chiếc quần này là biểu tượng cho sự thoải mái, phong cách và cá tính riêng biệt.', 
2, 7);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(7, N'LAZY POLO', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/062024/1718802718875.webp',
249.000, N'Áo polo', N'Lazy Polo được lấy cảm hứng từ tinh thần thoải mái, phóng khoáng,
đủng đỉnh nhưng vẫn thành công của nhân vật hoạt hình Bugs Bunny. 
Chiếc áo này là biểu tượng cho sự tự do, năng động và cá tính riêng biệt.', 1, 14);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(8, N'New Men''s Running Shoes', N'', 150.0000, N'Comfortable Sports Shoes Men ', N'Description', 4, 15);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES
(9, N'Men Hiking Shoes Waterproof Non', N'', 180.0000, N'Men Hiking Shoes Waterproof', N'Description', 3, 14);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(10, N'SSS. CARD HOLDER', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/022024/1709116777864.webp', 
89.700, N'Ví đựng thẻ', N'Chưa có mô tả cho sản phẩm này', 4, 15);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES
(11, N'PARIS SUIT JACKET', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/012024/1704387165881.webp',
599.500, N'Suit jacket', N'Paris Suit Jacket - Set áo suit nẹp cài thẳng, form ôm.', 3, 17);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(12, N'S BOXY JACKET', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/022024/1708334774333.webp',
269.700, N'Áo khoác da lộn', N'S Boxy Jacket - áo khoác da lộn, gập súp ở thân trước.', 3, 19);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES
(13, N'SSS. HENLEY SWEATSHIR', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/022024/1708332707937.webp', 
164.700, N'NEW Spring White Shoes ', N'SSS. Henley Sweatshirt - áo sweatshirt cổ polo, 
phối cổ và hình in thành cao ở trước ngực.', 3, 18);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(14, N'Balo Da PU ', N'https://routine.vn/media/amasty/webp/catalog/product/cache/5b5632a96492396f42c72e22fdd64763/1/0/10f23bag007-beige-_1__1_1_jpg.webp', 
785.0000, N'Balo Da PU Trơn Thời Trang Thiết Kế Basic Phối Dây Kéo', N'Chưa có mô tả cho sản phẩm này', 4, 1);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
(15, N'Túi Tote Organic Cotton', N'https://routine.vn/media/amasty/webp/catalog/product/cache/5b5632a96492396f42c72e22fdd64763/t/u/tui-tote-10s23bagu005-_4__1_1_jpg.webp', 
100.0000, N'Túi Tote Organic Cotton Thêu Chữ "Coffee Lover"', N'Chưa có mô tả cho sản phẩm này', 4, 6);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES
(16, N'Túi Đeo Chéo Unisex', N'https://routine.vn/media/amasty/webp/catalog/product/cache/5b5632a96492396f42c72e22fdd64763/1/0/10f22bagu004_black_1__1_1_jpg.webp', 
149.000, N'Túi Đeo Chéo Unisex Thêu Nhãn Trang Trí', N'Chưa có mô tả cho sản phẩm này', 4, 7);

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES
(17, N'Áo Khoác Jean Nam', N'https://routine.vn/media/catalog/product/cache/5b5632a96492396f42c72e22fdd64763/a/o/ao-khoac-nam-16-10f23dja004-black-_1__2.jpg',
100.0000, N'Áo Khoác Jean Nam Tay Dài Xếp Ly Trơn Form Regular',
N'Description', 3, 1);

INSERT [dbo].[product] ( [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES 
( N'CHRIS TROUSERS', N'https://cdn.ssstutter.com/products/66z6ao28eNQDG839/032024/1710667218628.webp', 
384.300, N'Quần dài', N'BST "Bloom" Xuân/Hạ 2024 - Quần âu vải sợi wool kẻ chìm, rất ít nhăn.',
2, 6);

SET IDENTITY_INSERT [dbo].[product] OFF