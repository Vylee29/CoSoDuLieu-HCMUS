USE [QLBanHang]
GO
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'0001', N'LÊ NGUYỄN LAN VY', N'NỮ', N'0777063550', N'135B TRẦN HƯNG ĐẠO')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'0002', N'TRẦN VĂN A', N'NAM', N'0974220803', N'123 NGUYỄN VĂN CỪ')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'0003', N'NGUYỄN ĐĂNG MẠNH TÚ', N'NAM', N'0974220702', N'222 HUỲNH TẤN PHÁT')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'0004', N'ĐINH THỊ VY', N'NỮ', N'0974728485', N'333 PHÚ MỸ HƯNG')
INSERT [dbo].[KHACH_HANG] ([makh], [hoten], [gioitinh], [dthoai], [diachi]) VALUES (N'0005', N'NGUYỄN HUỆ', N'NAM', N'0976342853', N'234 NGUYỄN VĂN CỪ')
GO
INSERT [dbo].[HOA_DON] ([mahd], [ngaylap], [makh]) VALUES (N'0010', CAST(N'2002-07-22' AS Date), N'0001')
INSERT [dbo].[HOA_DON] ([mahd], [ngaylap], [makh]) VALUES (N'0011', CAST(N'2010-09-22' AS Date), N'0003')
INSERT [dbo].[HOA_DON] ([mahd], [ngaylap], [makh]) VALUES (N'0012', CAST(N'2011-02-03' AS Date), N'0002')
INSERT [dbo].[HOA_DON] ([mahd], [ngaylap], [makh]) VALUES (N'0013', CAST(N'2012-08-22' AS Date), N'0004')
INSERT [dbo].[HOA_DON] ([mahd], [ngaylap], [makh]) VALUES (N'0014', CAST(N'2021-09-22' AS Date), N'0005')
GO
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'000A', N'DẦU ĂN', CAST(N'2002-07-22' AS Date), 50000)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'000B', N'NƯỚC MẮM', CAST(N'2002-05-29' AS Date), 5000)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'000C', N'TIÊU', CAST(N'2020-05-22' AS Date), 30000)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'000D', N'ĐƯỜNG ', CAST(N'2022-09-22' AS Date), 2000)
INSERT [dbo].[SAN_PHAM] ([masp], [tensp], [ngaysx], [dongia]) VALUES (N'000E', N'MUỐI', CAST(N'2021-08-21' AS Date), 30000)
GO
INSERT [dbo].[CT_HOA_DON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'0010', N'000A', 2, 10000)
INSERT [dbo].[CT_HOA_DON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'0011', N'000B', 1, 100000)
INSERT [dbo].[CT_HOA_DON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'0012', N'000C', 3, 20000)
INSERT [dbo].[CT_HOA_DON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'0013', N'000D', 4, 200000)
INSERT [dbo].[CT_HOA_DON] ([mahd], [masp], [soluong], [dongia]) VALUES (N'0014', N'000E', 2, 100000)
GO
