USE [LicitProd]
GO
SET IDENTITY_INSERT [dbo].[Permiso] ON 

GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1, N'Administrador', NULL, N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (2, N'Duenio', N'Dueño', N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (3, N'Comprador', NULL, N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (4, N'Proveedor', NULL, N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1023, N'LISTAR_LOGS', N'Listar Logs', N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1024, N'CREAR_CONCURSO', N'Crear COncurso', N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1025, N'LISTAR_CONCURSOS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1026, N'REGISTRAR_PROVEEDOR', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1027, N'LISTAR_PROVEEDOR', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1028, N'ADMINISTRAR_PERMISOS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1029, N'BACKUPS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1030, N'EDITAR_IDIOMAS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1031, N'CREAR_IDIOMA', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1032, N'ADMINISTRAR_USUARIOS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1033, N'OFERTAR_CONCURSO', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1060, N'ADMINISTRAR_COMPRADORES', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1061, N'CREAR_COMPRADORES', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1062, N'CompradorListarConcursos', NULL, N'Rol', 0)
GO
SET IDENTITY_INSERT [dbo].[Permiso] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (2, N'german.kuber@outlook.com', NULL, CAST(N'2019-09-30' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 1)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (1003, N'german2.kuber@outlook.com', NULL, CAST(N'2019-09-30' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 3)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (1006, N'proveedor1@proveedor.com', NULL, CAST(N'2019-09-30' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 4)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (1007, N'comprador@comprador.com', NULL, CAST(N'2019-09-30' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 3)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 

GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8, N'Logout', N'', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (11, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (12, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (13, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (14, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (15, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (16, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (17, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (18, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (19, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (20, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (21, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (22, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (23, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (24, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5015, N'Logout', N'', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5016, N'Login', N'german2.kuber@outlook.com', N'Informacion', 1003, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5017, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5018, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5019, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5020, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5021, N'Logout', N'', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5022, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5023, N'Logout', N'', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5024, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5025, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5026, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5027, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5028, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5029, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5030, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5031, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5032, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5033, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5034, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5035, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5036, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5037, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5038, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5039, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5040, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5041, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5042, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5043, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5044, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5045, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5046, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5047, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5048, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5049, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5050, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5051, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (6007, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-16' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (6008, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-16' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (6009, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-16' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (6010, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-16' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7007, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7008, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7009, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7010, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7011, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7012, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7013, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (7014, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8007, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8008, N'Logout', N'', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8009, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8010, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8011, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8012, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8013, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8014, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8015, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8016, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8017, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8018, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8019, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8020, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8021, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (8022, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-17' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9007, N'Login', N'german.kuber@outlook.com', N'Informacion', NULL, CAST(N'2019-09-21' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9008, N'Logout', N'', N'Informacion', NULL, CAST(N'2019-09-21' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9009, N'Login', N'german.kuber@outlook.com', N'Informacion', NULL, CAST(N'2019-09-21' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9010, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9011, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9012, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9013, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9014, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9015, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (9016, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10010, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10011, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10012, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10013, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10014, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10015, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10016, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10017, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10018, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10019, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10020, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10021, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10022, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10023, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10024, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10025, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10026, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10027, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10028, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10029, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10030, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10031, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10032, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10033, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10034, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10035, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10036, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10037, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10038, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10039, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10040, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10041, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10042, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10043, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10044, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10045, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10046, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10047, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10048, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10049, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10050, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10051, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10052, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10053, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10054, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10055, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-23' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10056, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10057, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10058, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10059, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10060, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10061, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10062, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10063, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10064, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10065, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10066, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10067, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10068, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10069, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10070, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10071, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10072, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10073, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10074, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10075, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10076, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10077, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10078, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10079, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10080, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10081, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10082, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10083, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10084, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10085, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10086, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10087, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10088, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10089, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10090, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10091, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10092, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10093, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10094, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10095, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10096, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10097, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10098, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10099, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10100, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10101, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10102, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10103, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10104, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10105, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10106, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10107, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10108, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10109, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10110, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10111, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10112, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10113, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10114, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10115, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10116, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10117, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10118, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10119, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10120, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10121, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10122, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10123, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10124, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10125, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10126, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10127, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10128, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10129, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10130, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10131, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10132, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10133, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10134, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10135, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10136, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10137, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10138, NULL, NULL, N'Informacion', 2, NULL)
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10139, NULL, NULL, N'Informacion', 2, NULL)
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10140, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10141, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10142, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10143, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10144, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10145, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10146, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10147, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10148, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10149, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10150, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10151, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10152, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10153, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-28' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10154, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10155, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10156, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10157, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10158, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10159, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10160, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10161, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10162, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10163, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10164, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10165, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10166, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10167, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10168, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10169, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10170, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10171, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10172, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10173, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10174, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10175, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10176, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10177, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10178, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10179, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10180, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10181, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10182, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10183, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10184, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10185, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10186, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10187, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10188, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10189, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10190, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10191, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10192, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10193, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10194, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10195, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10196, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10197, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10198, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10199, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10200, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10201, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10202, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10203, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10204, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10205, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10206, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10207, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10208, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10209, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10210, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10211, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10212, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10213, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10214, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10215, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10216, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10217, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10218, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10219, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10220, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10221, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10222, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10223, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10224, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10225, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10226, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10227, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10228, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10229, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10230, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10231, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10232, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10233, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10234, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10235, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10236, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10237, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10238, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10239, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10240, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10241, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10242, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10243, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10244, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10245, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10246, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10247, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10248, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10249, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10250, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10251, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10252, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10253, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10254, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10255, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10256, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10257, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10258, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10259, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10260, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10261, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10262, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10263, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10264, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10265, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10266, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10267, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10268, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10269, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10270, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10271, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10272, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10273, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10274, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10275, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10276, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10277, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10278, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10279, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10280, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10281, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10282, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10283, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10284, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10285, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10286, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10287, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-29' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10288, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10289, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10290, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10291, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10292, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10293, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10294, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10295, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10296, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10297, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10298, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10299, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10300, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10301, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10302, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10303, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10304, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10305, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10306, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10307, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10308, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10309, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10310, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10311, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10312, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10313, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10314, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10315, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10316, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10317, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10318, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10319, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10320, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10321, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10322, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10323, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10324, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10325, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10326, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10327, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10328, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10329, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10330, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10331, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10332, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10333, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10334, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10335, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10336, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10337, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10338, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10339, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10340, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10341, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10342, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10343, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10344, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10345, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10346, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10347, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10348, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10349, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10350, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10351, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10352, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10353, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10354, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10355, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10356, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10357, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10358, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10359, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10360, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10361, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10362, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10363, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10364, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10365, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10366, N'Login', N'proveedor1@proveedor.com', N'Informacion', 1006, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10367, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10368, N'Login', N'german2.kuber@outlook.com', N'Informacion', 1003, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10369, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10370, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10371, N'Login', N'german2.kuber@outlook.com', N'Informacion', 1003, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10372, N'Login', N'proveedor1@proveedor.com', N'Informacion', 1006, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10373, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10374, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10375, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10376, N'Login', N'german2.kuber@outlook.com', N'Informacion', 1003, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10377, N'Login', N'proveedor1@proveedor.com', N'Informacion', 1006, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10378, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10379, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10380, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10381, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10382, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10383, N'Login', N'proveedor1@proveedor.com', N'Informacion', 1006, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10384, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10385, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10386, N'Login', N'proveedor1@proveedor.com', N'Informacion', 1006, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10387, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10388, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10389, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10390, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10391, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10392, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10393, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10394, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10395, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10396, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10397, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10398, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10399, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10400, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10401, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10402, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10403, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10404, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10405, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10406, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10407, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10408, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10409, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10410, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10411, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10412, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10413, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10414, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10415, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10416, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10417, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10418, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10419, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10420, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10421, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10422, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10423, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10424, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10425, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10426, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10427, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10428, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10429, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10430, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10431, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10432, N'Login', N'comprador@comprador.com', N'Informacion', 1007, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10433, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10434, N'Login', N'comprador@comprador.com', N'Informacion', 1007, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10435, N'Login', N'proveedor1@proveedor.com', N'Informacion', 1006, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10436, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (10437, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-09-30' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario_Rol] ON 

GO
INSERT [dbo].[Usuario_Rol] ([Id], [UsuarioId], [RolId]) VALUES (1, 2, 1)
GO
INSERT [dbo].[Usuario_Rol] ([Id], [UsuarioId], [RolId]) VALUES (1004, 1003, 3)
GO
SET IDENTITY_INSERT [dbo].[Usuario_Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

GO
INSERT [dbo].[Proveedores] ([Id], [RazonSocial], [Celular], [Direccion], [Telefono], [Status], [Usuario_Id]) VALUES (10, N'McDOnalds', N'111111111', N'Alguna direcc', N'2222222', N'0', 1006)
GO
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[Compradores] ON 

GO
INSERT [dbo].[Compradores] ([Id], [Nombre], [Apellido], [Usuario_Id]) VALUES (1, N'comprado 1', N'comprado 1', NULL)
GO
SET IDENTITY_INSERT [dbo].[Compradores] OFF
GO
SET IDENTITY_INSERT [dbo].[Idiomas] ON 

GO
INSERT [dbo].[Idiomas] ([Id], [Nombre]) VALUES (1, N'Español')
GO
INSERT [dbo].[Idiomas] ([Id], [Nombre]) VALUES (2, N'Ingles')
GO
SET IDENTITY_INSERT [dbo].[Idiomas] OFF
GO
SET IDENTITY_INSERT [dbo].[Terminos] ON 

GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (1, N'LOGIN_ACEPTAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (2, N'LOGIN_CANCELAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (4, N'PRINCIPAL_MENU_LEFT_DASHBOARD')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (5, N'PRINCIPAL_MENU_LEFT_LOGS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (6, N'PRINCIPAL_MENU_LEFT_LISTAR_CONCURSOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (7, N'PRINCIPAL_MENU_LEFT_CREAR_CONCURSOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (8, N'PRINCIPAL_MENU_LEFT_REGISTRAR_PROVEEDOR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (9, N'PRINCIPAL_MENU_LEFT_LISTAR_PROVEEDOR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (10, N'PRINCIPAL_MENU_LEFT_ADMINISTRAR_PERMISOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (11, N'PRINCIPAL_MENU_LEFT_LISTAR_PERMISOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (12, N'LOGS_LIST_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (13, N'LOGS_LIST_DESCRIPCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (14, N'LOGS_LIST_TIPO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (15, N'LOGS_LIST_FECHA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (16, N'CONCURSO_CREAR_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (17, N'CONCURSO_CREAR_PRESUPUESTO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (18, N'CONCURSO_CREAR_FECHA_INICIO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (19, N'CONCURSO_CREAR_FECHA_APERTURA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (20, N'CONCURSO_CREAR_DESCRIPCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (23, N'PRINCIPAL_MENU_LEFT_BACKUPS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (24, N'BACKUP_CREAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (25, N'PRINCIPAL_MENU_CREAR_IDIOMA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (26, N'APPBAR_BUTTON_SALVAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (27, N'APPBAR_BUTTON_CANCELAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (28, N'IDIOMA_NUEVO_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (29, N'IDIOMA_LIST_KEY')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (30, N'IDIOMA_LIST_TRADUCCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (31, N'PRINCIPAL_MENU_LEFT_EDITAR_IDIOMAS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (32, N'NEW_PROVEEDOR_RAZON_SOCIAL')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (33, N'NEW_PROVEEDOR_CELULAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (34, N'NEW_PROVEEDOR_DIRECCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (35, N'NEW_PROVEEDOR_TELEFONO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (36, N'PRINCIPAL_MENU_ADMINISTRAR_USUARIOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (37, N'PASSWORD')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (38, N'EMAIL')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (39, N'PRINCIPAL_MENU_LEFT_OFERTAR_CONCURSO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (40, N'APPBAR_BUTTON_ELIMINAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (41, N'PERMISOS_ADMINISTRAR_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (42, N'PERMISOS_ADMINISTRAR_BYDEFAULT')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (43, N'APPBAR_BUTTON_EDITAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (44, N'COMPRADOR_NEW_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (45, N'COMPRADOR_NEW_APELLIDO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (46, N'PRINCIPAL_MENU_LEFT_ADMINISTRAR_COMPRADORES')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (47, N'PRINCIPAL_MENU_LEFT_CREAR_COMPRADOR')
GO
SET IDENTITY_INSERT [dbo].[Terminos] OFF
GO
SET IDENTITY_INSERT [dbo].[Traducciones] ON 

GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (1, 1, 1, N'Aceptar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (2, 2, 1, N'Cancelar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (3, 1, 2, N'AAAA')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (4, 2, 2, N'Cancel')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (5, 4, 1, N'Panel de Control')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (6, 4, 2, N'Dashboad')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (7, 5, 1, N'Logs')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (8, 5, 2, N'Logs')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (9, 6, 1, N'Listar Concursos')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (10, 6, 2, N'List of Auctions')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (11, 7, 1, N'Nuevo Concurso')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (12, 7, 2, N'New Auction')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (13, 8, 1, N'Nuevo Proveedor')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (14, 8, 2, N'New Provider')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (15, 9, 1, N'Listar Proveedores')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (16, 9, 2, N'Providers List')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (17, 10, 1, N'Administrar Permisos')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (18, 10, 2, N'Administrate Permissions')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (19, 11, 1, N'Listar Permisos')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (20, 11, 2, N'Permissions List')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (21, 12, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (22, 12, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (23, 13, 1, N'Descripción')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (24, 13, 2, N'Description')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (25, 14, 1, N'Tipo')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (26, 14, 2, N'Type')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (27, 15, 1, N'Fecha')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (28, 15, 2, N'Date')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (29, 16, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (30, 16, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (31, 17, 1, N'Presupuesto')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (32, 17, 2, N'Budget')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (33, 18, 1, N'Fecha de Inicio')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (34, 18, 2, N'Start Date')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (35, 19, 1, N'Fecha de Apertura')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (36, 19, 2, N'Open Date')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (37, 20, 1, N'Descripcion')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (38, 20, 2, N'Descriptión')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (40, 23, 1, N'Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (41, 23, 2, N'Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (42, 24, 1, N'Crear Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (43, 24, 2, N'Create Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (44, 25, 1, N'Nuevo Idioma')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (45, 25, 2, N'New Languaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (46, 28, 1, N'Nuevo Lenguaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (47, 28, 2, N'New Languaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (48, 26, 1, N'Guardar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (49, 26, 2, N'Save')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (50, 27, 1, N'Cancelar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (51, 27, 2, N'Cancel')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (52, 29, 1, N'Valor')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (53, 29, 2, N'Key')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (54, 30, 1, N'Traducción')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (55, 30, 2, N'Traslate')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (85, 31, 1, N'Editar Idiomas')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (86, 31, 2, N'Edit Languaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (87, 32, 1, N'Razón Social')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (88, 32, 2, N'Social Number')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (89, 33, 1, N'Ceular')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (90, 33, 2, N'Celephone')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (91, 34, 1, N'Dirección')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (92, 34, 2, N'Address')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (93, 35, 1, N'Teleéfono')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (94, 35, 2, N'Telephone')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (95, 36, 1, N'Administrar Usuarios')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (96, 36, 2, N'Administrate Users')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (97, 37, 1, N'Contraseña')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (98, 37, 2, N'Password')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (99, 38, 1, N'Correo Electrónico')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (100, 38, 2, N'Email')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (101, 39, 1, N'Ofertar Concurso')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (102, 39, 2, N'Offert Auction')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (103, 40, 1, N'Eliminar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (104, 40, 2, N'Delete')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (105, 41, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (106, 41, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (107, 42, 1, N'Por Defecto')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (108, 42, 2, N'By Default')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (109, 43, 1, N'Editar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (110, 43, 2, N'Edit')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (111, 44, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (112, 44, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (113, 45, 1, N'Apellido')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (114, 45, 2, N'Surname')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (119, 46, 1, N'Administrar Compradores')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (120, 46, 1, N'Administrate Buyers')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (121, 47, 1, N'Crear Comprador')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (122, 47, 2, N'New Buyer')
GO
SET IDENTITY_INSERT [dbo].[Traducciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol_Permiso] ON 

GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2196, NULL, 1)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2197, NULL, 2)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2198, NULL, 3)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2199, NULL, 4)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2200, 1, 1023)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2201, 3, 1024)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2202, 3, 1025)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2203, 3, 1026)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2204, 1, 1026)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2205, 2, 1026)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2206, 1, 1027)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2207, 3, 1027)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2208, 1, 1028)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2209, 1, 1029)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2210, 1, 1030)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2211, 1, 1031)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2212, 1, 1032)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2213, 4, 1033)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2215, 1034, 1029)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2228, 1, 1060)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2229, 1, 1061)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2230, NULL, 1062)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2231, 1062, 1025)
GO
SET IDENTITY_INSERT [dbo].[Rol_Permiso] OFF
GO
SET IDENTITY_INSERT [dbo].[Concursos] ON 

GO
INSERT [dbo].[Concursos] ([Id], [Status], [Presupuesto], [Nombre], [FechaInicio], [FechaApertura], [AdjudicacionDirecta], [Descripcion], [Hash]) VALUES (1030, 0, CAST(233243 AS Decimal(18, 0)), N'asdasd', CAST(N'2019-09-30 14:10:59.000' AS DateTime), CAST(N'2019-10-01 14:10:59.000' AS DateTime), 0, N'dsasfdsf', N'443B3414A3FC2ED5B990E5A622A28FCC')
GO
INSERT [dbo].[Concursos] ([Id], [Status], [Presupuesto], [Nombre], [FechaInicio], [FechaApertura], [AdjudicacionDirecta], [Descripcion], [Hash]) VALUES (1031, 0, CAST(34234 AS Decimal(18, 0)), N'asdasd', CAST(N'2019-09-30 19:33:35.000' AS DateTime), CAST(N'2019-10-01 19:33:35.000' AS DateTime), 0, N'', N'D7AE68493ED1F34075838DFF028066C3')
GO
SET IDENTITY_INSERT [dbo].[Concursos] OFF
GO
SET IDENTITY_INSERT [dbo].[Verificables] ON 

GO
INSERT [dbo].[Verificables] ([Id], [Digito], [Tabla]) VALUES (4, N'00D4C36433BC4719D88AB49FB1726E36', N'Concursos')
GO
SET IDENTITY_INSERT [dbo].[Verificables] OFF
GO
