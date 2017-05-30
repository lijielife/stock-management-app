/*
Ce script a été créé par Visual Studio dans 30/05/2017 à 11:21.
Exécutez ce script sur ESSARRAJ\SQLEXPRESS.data1 (ESSARRAJ\ESSARRAJ-Fouad) pour le rendre identique à ESSARRAJ\SQLEXPRESS.StockManagement (ESSARRAJ\ESSARRAJ-Fouad).
Ce script effectue ses actions dans l'ordre suivant :
1. Désactive les contraintes de clé étrangère.
2. Effectue des commandes DELETE. 
3. Effectue des commandes UPDATE.
4. Effectue des commandes INSERT.
5. Réactive les contraintes de clé étrangère.
Sauvegardez votre base de données cible avant d'exécuter ce script.
*/
SET NUMERIC_ROUNDABORT OFF
GO
SET XACT_ABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
/*Pointeur utilisé pour les mises à jour de texte ou d'image. Cela n'est peut-être pas nécessaire, mais est déclaré ici le cas échéant*/
DECLARE @pv binary(16)
BEGIN TRANSACTION
ALTER TABLE [dbo].[AuthorizationRoles] DROP CONSTRAINT [FK_dbo.AuthorizationRoles_dbo.Authorizations_Authorization_Id]
ALTER TABLE [dbo].[AuthorizationRoles] DROP CONSTRAINT [FK_dbo.AuthorizationRoles_dbo.Roles_Role_Id]
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_dbo.UserRoles_dbo.Users_User_Id]
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_Role_Id]
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT INTO [dbo].[Roles] ([Id], [Reference], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Hidden], [Ordre], [DateCreation], [DateModification]) VALUES (1, N'Guest', N'Guest', NULL, NULL, NULL, NULL, NULL, 0, 0, '20170530 11:08:51.297', '20170530 11:08:51.297')
INSERT INTO [dbo].[Roles] ([Id], [Reference], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Hidden], [Ordre], [DateCreation], [DateModification]) VALUES (2, N'User', N'User', NULL, NULL, NULL, NULL, NULL, 0, 0, '20170530 11:08:51.297', '20170530 11:08:51.297')
INSERT INTO [dbo].[Roles] ([Id], [Reference], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Hidden], [Ordre], [DateCreation], [DateModification]) VALUES (3, N'Admin', N'Admin', NULL, NULL, NULL, NULL, NULL, 0, 0, '20170530 11:08:51.297', '20170530 11:08:51.297')
INSERT INTO [dbo].[Roles] ([Id], [Reference], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Hidden], [Ordre], [DateCreation], [DateModification]) VALUES (4, N'Root', N'Root', NULL, NULL, NULL, NULL, NULL, 1, 0, '20170530 11:08:51.297', '20170530 11:08:51.297')
INSERT INTO [dbo].[Roles] ([Id], [Reference], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Hidden], [Ordre], [DateCreation], [DateModification]) VALUES (5, N'MaterialRole', N'MaterialRole', NULL, NULL, NULL, NULL, NULL, 0, 0, '20170530 11:08:51.297', '20170530 11:08:51.297')
INSERT INTO [dbo].[Roles] ([Id], [Reference], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Hidden], [Ordre], [DateCreation], [DateModification]) VALUES (6, N'RHRole', N'RHRole', NULL, NULL, NULL, NULL, NULL, 0, 0, '20170530 11:08:51.297', '20170530 11:08:51.297')
INSERT INTO [dbo].[Roles] ([Id], [Reference], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Hidden], [Ordre], [DateCreation], [DateModification]) VALUES (7, N'DirRole', N'DirRole', NULL, NULL, NULL, NULL, NULL, 0, 0, '20170530 11:08:51.297', '20170530 11:08:51.297')
SET IDENTITY_INSERT [dbo].[Roles] OFF
INSERT INTO [dbo].[UserRoles] ([User_Id], [Role_Id]) VALUES (1, 4)
INSERT INTO [dbo].[UserRoles] ([User_Id], [Role_Id]) VALUES (2, 3)
INSERT INTO [dbo].[UserRoles] ([User_Id], [Role_Id]) VALUES (3, 1)
INSERT INTO [dbo].[UserRoles] ([User_Id], [Role_Id]) VALUES (4, 5)
INSERT INTO [dbo].[UserRoles] ([User_Id], [Role_Id]) VALUES (5, 6)
INSERT INTO [dbo].[UserRoles] ([User_Id], [Role_Id]) VALUES (6, 7)
SET IDENTITY_INSERT [dbo].[Services] ON
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (1, N'SAA', N'SAA', N'SAA', N'', N'', N'', N'', N'', N'', N'SAA', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (2, N'Bloc', N'Bloc', N'Bloc', N'', N'', N'', N'', N'', N'', N'Bloc', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (3, N'Maternite', N'Maternite', N'Maternite', N'', N'', N'', N'', N'', N'', N'Maternite', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (4, N'Urgence', N'Urgence', N'Urgence', N'', N'', N'', N'', N'', N'', N'Urgence', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (5, N'Consultations', N'Consultation', N'Consultation', N'', N'', N'', N'', N'', N'', N'Consultations', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (6, N'Hospitalisation', N'Hospitalisation', N'Hospitalisation', N'', N'', N'', N'', N'', N'', N'Hospitalisation', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (7, N'Laboratoire', N'Laboratoire', N'Laboratoire', N'', N'', N'', N'', N'', N'', N'Laboratoire', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (8, N'Radio', N'Radio', N'Radio', N'', N'', N'', N'', N'', N'', N'Radio', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
INSERT INTO [dbo].[Services] ([Id], [Name_French], [Name_English], [Name_Arab], [Observation_French], [Observation_English], [Observation_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (9, N'Administration', N'Administration', N'Administration', N'', N'', N'', N'', N'', N'', N'Administration', 0, '20170530 11:08:51.580', '20170530 11:08:51.580')
SET IDENTITY_INSERT [dbo].[Services] OFF
SET IDENTITY_INSERT [dbo].[Authorizations] ON
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (1, NULL, NULL, N'App.Gwin.Entities.Secrurity.Authentication.User', N'Recherche', NULL, 0, '20170530 11:07:23.693', '20170530 11:07:23.693')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (2, NULL, NULL, N'App.Gwin.Entities.Secrurity.Authentication.User', N'', NULL, 0, '20170530 11:07:23.693', '20170530 11:07:23.693')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (3, NULL, NULL, N'App.Gwin.Entities.Secrurity.Authentication.User', N'', NULL, 0, '20170530 11:07:23.693', '20170530 11:07:23.693')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (4, NULL, NULL, N'StockManagement.Entities.Delivery', N'', NULL, 0, '20170530 11:07:23.897', '20170530 11:07:23.897')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (5, NULL, NULL, N'StockManagement.Entities.Employee', N'', NULL, 0, '20170530 11:07:23.943', '20170530 11:07:23.943')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (6, NULL, NULL, N'StockManagement.Entities.Location', N'', NULL, 0, '20170530 11:07:23.947', '20170530 11:07:23.947')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (7, NULL, NULL, N'StockManagement.Entities.MaterialCategory', N'', NULL, 0, '20170530 11:07:23.950', '20170530 11:07:23.950')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (8, NULL, NULL, N'StockManagement.Entities.Material', N'', NULL, 0, '20170530 11:07:23.950', '20170530 11:07:23.950')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (9, NULL, NULL, N'StockManagement.Entities.MaterialInOut', N'', NULL, 0, '20170530 11:07:23.950', '20170530 11:07:23.950')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (10, NULL, NULL, N'StockManagement.Entities.Service', N'', NULL, 0, '20170530 11:07:23.953', '20170530 11:07:23.953')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (11, NULL, NULL, N'StockManagement.Entities.MaterialRepair', N'', NULL, 0, '20170530 11:07:23.970', '20170530 11:07:23.970')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (12, NULL, NULL, N'App.Gwin.Entities.Secrurity.Authentication.User', N'Recherche', NULL, 0, '20170530 11:08:51.387', '20170530 11:08:51.387')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (13, NULL, NULL, N'App.Gwin.Entities.Secrurity.Authentication.User', N'', NULL, 0, '20170530 11:08:51.440', '20170530 11:08:51.440')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (14, NULL, NULL, N'App.Gwin.Entities.Secrurity.Authentication.User', N'', NULL, 0, '20170530 11:08:51.440', '20170530 11:08:51.440')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (15, NULL, NULL, N'StockManagement.Entities.Delivery', N'', NULL, 0, '20170530 11:08:51.540', '20170530 11:08:51.540')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (16, NULL, NULL, N'StockManagement.Entities.Employee', N'', NULL, 0, '20170530 11:08:51.550', '20170530 11:08:51.550')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (17, NULL, NULL, N'StockManagement.Entities.Location', N'', NULL, 0, '20170530 11:08:51.553', '20170530 11:08:51.553')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (18, NULL, NULL, N'StockManagement.Entities.MaterialCategory', N'', NULL, 0, '20170530 11:08:51.553', '20170530 11:08:51.553')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (19, NULL, NULL, N'StockManagement.Entities.Material', N'', NULL, 0, '20170530 11:08:51.557', '20170530 11:08:51.557')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (20, NULL, NULL, N'StockManagement.Entities.MaterialInOut', N'', NULL, 0, '20170530 11:08:51.557', '20170530 11:08:51.557')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (21, NULL, NULL, N'StockManagement.Entities.Service', N'', NULL, 0, '20170530 11:08:51.567', '20170530 11:08:51.567')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (22, NULL, NULL, N'StockManagement.Entities.MaterialRepair', N'', NULL, 0, '20170530 11:08:51.567', '20170530 11:08:51.567')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (23, NULL, NULL, N'StockManagement.Entities.MaterialTransfer', N'', NULL, 0, '20170530 11:08:51.577', '20170530 11:08:51.577')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (24, NULL, NULL, N'StockManagement.Entities.MailConfiguration', N'', NULL, 0, '20170530 11:08:51.637', '20170530 11:08:51.637')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (25, NULL, NULL, N'StockManagement.Entities.Receiver', N'', NULL, 0, '20170530 11:08:51.637', '20170530 11:08:51.637')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (26, NULL, NULL, N'StockManagement.Entities.Sender', N'', NULL, 0, '20170530 11:08:51.637', '20170530 11:08:51.637')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (27, NULL, NULL, N'StockManagement.Entities.Arrival', N'', NULL, 0, '20170530 11:08:51.637', '20170530 11:08:51.637')
INSERT INTO [dbo].[Authorizations] ([Id], [Name], [Description], [BusinessEntity], [ActionsNamesAsString], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (28, NULL, NULL, N'StockManagement.Entities.Departure', N'', NULL, 0, '20170530 11:08:51.637', '20170530 11:08:51.637')
SET IDENTITY_INSERT [dbo].[Authorizations] OFF
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (1, 1)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (2, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (2, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (3, 6)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (4, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (4, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (5, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (5, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (6, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (6, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (7, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (7, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (8, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (8, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (9, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (9, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (10, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (10, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (11, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (11, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (12, 1)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (13, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (13, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (14, 6)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (15, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (15, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (16, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (16, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (17, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (17, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (18, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (18, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (19, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (19, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (20, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (20, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (21, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (21, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (22, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (22, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (23, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (23, 5)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (24, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (24, 6)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (24, 7)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (25, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (25, 6)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (25, 7)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (26, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (26, 6)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (26, 7)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (27, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (27, 6)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (27, 7)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (28, 3)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (28, 6)
INSERT INTO [dbo].[AuthorizationRoles] ([Authorization_Id], [Role_Id]) VALUES (28, 7)
SET IDENTITY_INSERT [dbo].[MenuItemApplications] ON
INSERT INTO [dbo].[MenuItemApplications] ([Id], [Code], [Description_French], [Description_English], [Description_Arab], [Title_French], [Title_English], [Title_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (1, N'Configuration', NULL, NULL, NULL, N'Configuration', N'Configuration', N'إعدادات', NULL, 0, '20170530 11:08:51.490', '20170530 11:08:51.490')
INSERT INTO [dbo].[MenuItemApplications] ([Id], [Code], [Description_French], [Description_English], [Description_Arab], [Title_French], [Title_English], [Title_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (2, N'Admin', NULL, NULL, NULL, N'Administration', N'Admin', N'تدبير البرنامج', NULL, 0, '20170530 11:08:51.490', '20170530 11:08:51.490')
INSERT INTO [dbo].[MenuItemApplications] ([Id], [Code], [Description_French], [Description_English], [Description_Arab], [Title_French], [Title_English], [Title_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (3, N'Root', NULL, NULL, NULL, N'Rélisateur de l''application', N'Application Constructor', N'مصمم اليرنامج', NULL, 0, '20170530 11:08:51.490', '20170530 11:08:51.490')
SET IDENTITY_INSERT [dbo].[MenuItemApplications] OFF
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT INTO [dbo].[Users] ([Id], [Login], [Password], [Language], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (1, N'Root', N'Root', 0, N'Root', 0, '20170530 11:08:51.450', '20170530 11:08:51.450')
INSERT INTO [dbo].[Users] ([Id], [Login], [Password], [Language], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (2, N'Admin', N'Admin', 0, N'Admin', 0, '20170530 11:08:51.450', '20170530 11:08:51.450')
INSERT INTO [dbo].[Users] ([Id], [Login], [Password], [Language], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (3, N'Guest', N'Guest', 0, N'Guest', 0, '20170530 11:08:51.450', '20170530 11:08:51.450')
INSERT INTO [dbo].[Users] ([Id], [Login], [Password], [Language], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (4, N'Materiel', N'Materiel', 1, N'MaterialRole', 0, '20170530 11:08:51.450', '20170530 11:08:51.450')
INSERT INTO [dbo].[Users] ([Id], [Login], [Password], [Language], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (5, N'RH', N'RH', 1, N'RHRole', 0, '20170530 11:08:51.450', '20170530 11:08:51.450')
INSERT INTO [dbo].[Users] ([Id], [Login], [Password], [Language], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (6, N'Dir', NULL, 1, N'DirRole', 0, '20170530 11:08:51.450', '20170530 11:08:51.450')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[ApplicationNames] ON
INSERT INTO [dbo].[ApplicationNames] ([Id], [Name_French], [Name_English], [Name_Arab], [Description_French], [Description_English], [Description_Arab], [Reference], [Ordre], [DateCreation], [DateModification]) VALUES (1, N'Application de Gestion ', N'Management System', N'برنامج التدبير ', NULL, NULL, NULL, N'StockManagementSystem', 0, '20170530 11:08:51.100', '20170530 11:08:51.100')
SET IDENTITY_INSERT [dbo].[ApplicationNames] OFF
COMMIT TRANSACTION
