USE [requeMatricula]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 4/30/2019 7:52:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[idCarrera] [int] IDENTITY(1,1) NOT NULL,
	[nombreCarrera] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[idCurso] [int] IDENTITY(1,1) NOT NULL,
	[nombreCurso] [nchar](20) NOT NULL,
	[cupo] [smallint] NOT NULL,
	[creditos] [smallint] NOT NULL,
	[costo] [int] NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoXCarrera]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoXCarrera](
	[idCarrera] [int] NOT NULL,
	[idCurso] [int] NOT NULL,
 CONSTRAINT [PK_CursoXCarrera] PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC,
	[idCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[nombreEstado] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[idHorario] [int] IDENTITY(1,1) NOT NULL,
	[dia] [nchar](15) NOT NULL,
	[hora] [time](7) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioXCurso]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioXCurso](
	[idCurso] [int] NOT NULL,
	[idHorario] [int] NOT NULL,
 CONSTRAINT [PK_HorarioXCurso] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC,
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imparte]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imparte](
	[idUsuario] [int] NOT NULL,
	[idCurso] [int] NOT NULL,
	[idPeriodo] [int] NOT NULL,
 CONSTRAINT [PK_Imparte] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idCurso] ASC,
	[idPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[idUsuario] [int] NOT NULL,
	[idCurso] [int] NOT NULL,
	[idPeriodo] [int] NOT NULL,
	[calificacion] [decimal](3, 0) NOT NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idCurso] ASC,
	[idPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periodo]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodo](
	[idPeriodo] [int] IDENTITY(1,1) NOT NULL,
	[nombrePeriodo] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Periodo] PRIMARY KEY CLUSTERED 
(
	[idPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregunta](
	[idPregunta] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[idPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntaXUsuario]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntaXUsuario](
	[idPregunta] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[respuesta] [nchar](40) NOT NULL,
 CONSTRAINT [PK_PreguntaXUsuario] PRIMARY KEY CLUSTERED 
(
	[idPregunta] ASC,
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requisito]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requisito](
	[idRequisito] [int] IDENTITY(1,1) NOT NULL,
	[descripcionRequisito] [nchar](30) NOT NULL,
	[idTipo] [int] NOT NULL,
 CONSTRAINT [PK_Requisito] PRIMARY KEY CLUSTERED 
(
	[idRequisito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequisitoXCurso]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequisitoXCurso](
	[idRequisito] [int] NOT NULL,
	[idCurso] [int] NOT NULL,
 CONSTRAINT [PK_RequisitoXCurso] PRIMARY KEY CLUSTERED 
(
	[idRequisito] ASC,
	[idCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequisitoXUsuario]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequisitoXUsuario](
	[idRequisito] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_RequisitoXUsuario] PRIMARY KEY CLUSTERED 
(
	[idRequisito] ASC,
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[nombreRol] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoRequisito]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRequisito](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](20) NOT NULL,
 CONSTRAINT [PK_TipoRequisito] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](30) NOT NULL,
	[apellido1] [nchar](30) NOT NULL,
	[apellido2] [nchar](30) NOT NULL,
	[contrasenna] [nchar](126) NOT NULL,
	[correo] [nchar](30) NOT NULL,
	[idRol] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[numIntentos] [int] NULL,
	[fechaNacimiento] [date] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioXCarrera]    Script Date: 4/30/2019 7:52:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioXCarrera](
	[idUsuario] [int] NOT NULL,
	[idCarrera] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioXCarrera] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_numIntentos]  DEFAULT ((0)) FOR [numIntentos]
GO
ALTER TABLE [dbo].[CursoXCarrera]  WITH CHECK ADD  CONSTRAINT [FK_CursoXCarrera_Carrera] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
GO
ALTER TABLE [dbo].[CursoXCarrera] CHECK CONSTRAINT [FK_CursoXCarrera_Carrera]
GO
ALTER TABLE [dbo].[CursoXCarrera]  WITH CHECK ADD  CONSTRAINT [FK_CursoXCarrera_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[CursoXCarrera] CHECK CONSTRAINT [FK_CursoXCarrera_Curso]
GO
ALTER TABLE [dbo].[HorarioXCurso]  WITH CHECK ADD  CONSTRAINT [FK_HorarioXCurso_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[HorarioXCurso] CHECK CONSTRAINT [FK_HorarioXCurso_Curso]
GO
ALTER TABLE [dbo].[HorarioXCurso]  WITH CHECK ADD  CONSTRAINT [FK_HorarioXCurso_Horario] FOREIGN KEY([idHorario])
REFERENCES [dbo].[Horario] ([idHorario])
GO
ALTER TABLE [dbo].[HorarioXCurso] CHECK CONSTRAINT [FK_HorarioXCurso_Horario]
GO
ALTER TABLE [dbo].[Imparte]  WITH CHECK ADD  CONSTRAINT [FK_Imparte_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[Imparte] CHECK CONSTRAINT [FK_Imparte_Curso]
GO
ALTER TABLE [dbo].[Imparte]  WITH CHECK ADD  CONSTRAINT [FK_Imparte_Periodo] FOREIGN KEY([idPeriodo])
REFERENCES [dbo].[Periodo] ([idPeriodo])
GO
ALTER TABLE [dbo].[Imparte] CHECK CONSTRAINT [FK_Imparte_Periodo]
GO
ALTER TABLE [dbo].[Imparte]  WITH CHECK ADD  CONSTRAINT [FK_Imparte_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Imparte] CHECK CONSTRAINT [FK_Imparte_Usuario]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Curso]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Periodo] FOREIGN KEY([idPeriodo])
REFERENCES [dbo].[Periodo] ([idPeriodo])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Periodo]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Usuario]
GO
ALTER TABLE [dbo].[PreguntaXUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaXUsuario_Pregunta] FOREIGN KEY([idPregunta])
REFERENCES [dbo].[Pregunta] ([idPregunta])
GO
ALTER TABLE [dbo].[PreguntaXUsuario] CHECK CONSTRAINT [FK_PreguntaXUsuario_Pregunta]
GO
ALTER TABLE [dbo].[PreguntaXUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaXUsuario_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[PreguntaXUsuario] CHECK CONSTRAINT [FK_PreguntaXUsuario_Usuario]
GO
ALTER TABLE [dbo].[Requisito]  WITH CHECK ADD  CONSTRAINT [FK_Requisito_TipoRequisito] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoRequisito] ([idTipo])
GO
ALTER TABLE [dbo].[Requisito] CHECK CONSTRAINT [FK_Requisito_TipoRequisito]
GO
ALTER TABLE [dbo].[RequisitoXCurso]  WITH CHECK ADD  CONSTRAINT [FK_RequisitoXCurso_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[RequisitoXCurso] CHECK CONSTRAINT [FK_RequisitoXCurso_Curso]
GO
ALTER TABLE [dbo].[RequisitoXCurso]  WITH CHECK ADD  CONSTRAINT [FK_RequisitoXCurso_Requisito] FOREIGN KEY([idRequisito])
REFERENCES [dbo].[Requisito] ([idRequisito])
GO
ALTER TABLE [dbo].[RequisitoXCurso] CHECK CONSTRAINT [FK_RequisitoXCurso_Requisito]
GO
ALTER TABLE [dbo].[RequisitoXUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RequisitoXUsuario_Requisito] FOREIGN KEY([idRequisito])
REFERENCES [dbo].[Requisito] ([idRequisito])
GO
ALTER TABLE [dbo].[RequisitoXUsuario] CHECK CONSTRAINT [FK_RequisitoXUsuario_Requisito]
GO
ALTER TABLE [dbo].[RequisitoXUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RequisitoXUsuario_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[RequisitoXUsuario] CHECK CONSTRAINT [FK_RequisitoXUsuario_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Estado]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
ALTER TABLE [dbo].[UsuarioXCarrera]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioXCarrera_Carrera] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
GO
ALTER TABLE [dbo].[UsuarioXCarrera] CHECK CONSTRAINT [FK_UsuarioXCarrera_Carrera]
GO
ALTER TABLE [dbo].[UsuarioXCarrera]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioXCarrera_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioXCarrera] CHECK CONSTRAINT [FK_UsuarioXCarrera_Usuario]
GO
