USE [master]
GO
/****** Object:  Database [BASECOLEGIO]    Script Date: 06/02/2020 17:53:29 ******/
CREATE DATABASE [BASECOLEGIO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BASECOLEGIO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BASECOLEGIO.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BASECOLEGIO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BASECOLEGIO_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BASECOLEGIO] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BASECOLEGIO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BASECOLEGIO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET ARITHABORT OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BASECOLEGIO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BASECOLEGIO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BASECOLEGIO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BASECOLEGIO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BASECOLEGIO] SET  MULTI_USER 
GO
ALTER DATABASE [BASECOLEGIO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BASECOLEGIO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BASECOLEGIO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BASECOLEGIO] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BASECOLEGIO] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BASECOLEGIO]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[idalumno] [int] IDENTITY(1,1) NOT NULL,
	[Apellido_Paterno] [varchar](50) NULL,
	[Apellido_Materno] [varchar](50) NULL,
	[Nombres] [varchar](50) NULL,
	[Fecha_de_nacimiento] [varchar](50) NULL,
	[Nro_de_documento] [varchar](50) NULL,
	[Estado_civil] [varchar](50) NULL,
	[Sexo] [varchar](50) NULL,
	[Nacionalidad] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Departamento] [varchar](50) NULL,
	[Provincia] [varchar](50) NULL,
	[Distrito] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Departamento2] [varchar](50) NULL,
	[Provincia2] [varchar](50) NULL,
	[Distrito2] [varchar](50) NULL,
	[Telefono1] [varchar](50) NULL,
	[Telefono2] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Profesion] [varchar](50) NULL,
	[Local_studio] [varchar](50) NULL,
	[Fecha_de_Matricula] [varchar](50) NULL,
	[Fecha_de_Inicio] [varchar](50) NULL,
	[Codigo] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[idalumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_CONTROL_DE_COBROS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETALLE_CONTROL_DE_COBROS](
	[Id_detalle_de_control_de_cobros] [int] IDENTITY(1,1) NOT NULL,
	[Pago_realizado] [numeric](18, 2) NULL,
	[Fecha_que_pago] [datetime] NULL,
	[Nro_comprobante] [varchar](50) NULL,
	[Detalle] [varchar](max) NULL,
	[Grado] [varchar](50) NULL,
	[Id_Alumno] [int] NULL,
	[Id_usuario] [int] NULL,
 CONSTRAINT [PK_DETALLE_CONTROL_DE_COBROS] PRIMARY KEY CLUSTERED 
(
	[Id_detalle_de_control_de_cobros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GRADOS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GRADOS](
	[Id_grado] [int] IDENTITY(1,1) NOT NULL,
	[Grado] [varchar](50) NULL,
	[Costo_de_matricula] [numeric](18, 2) NULL,
	[Costo_de_pension] [numeric](18, 2) NULL,
	[Cantidad_de_pensiones] [int] NULL,
 CONSTRAINT [PK_GRADOS] PRIMARY KEY CLUSTERED 
(
	[Id_grado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATRICULAS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATRICULAS](
	[Id_matricula] [int] IDENTITY(1,1) NOT NULL,
	[Grado] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[N_recibo] [varchar](50) NULL,
	[Id_alumno] [int] NULL,
	[Saldo] [numeric](18, 2) NULL,
	[Estado] [varchar](50) NULL,
	[Pension] [numeric](18, 2) NULL,
	[Importe]  AS ([Pension]-[Saldo]),
	[Seccion] [varchar](50) NULL,
	[Numero_de_pension] [varchar](50) NULL,
	[Tipo_de_Institucion] [varchar](50) NULL,
	[Estado_de_matricula] [varchar](50) NULL,
	[Saldo_matricula] [numeric](18, 2) NULL,
	[Horario] [varchar](50) NULL,
	[Observacion] [varchar](max) NULL,
	[Prioridad] [varchar](50) NULL,
 CONSTRAINT [PK_MATRICULAS] PRIMARY KEY CLUSTERED 
(
	[Id_matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Serializacion]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Serializacion](
	[Id_serializacion] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](50) NULL,
	[numeroinicio] [varchar](50) NULL,
	[numerofin] [varchar](50) NULL,
	[Tipo_de_comprobante] [varchar](50) NULL,
 CONSTRAINT [PK_Serializacion] PRIMARY KEY CLUSTERED 
(
	[Id_serializacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIO2]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIO2](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres_y_Apellidos] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_USUARIO2] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[MATRICULAS]  WITH CHECK ADD  CONSTRAINT [FK_MATRICULAS_Alumnos] FOREIGN KEY([Id_alumno])
REFERENCES [dbo].[Alumnos] ([idalumno])
GO
ALTER TABLE [dbo].[MATRICULAS] CHECK CONSTRAINT [FK_MATRICULAS_Alumnos]
GO
/****** Object:  StoredProcedure [dbo].[actualizar_serializacion_mas_uno]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[actualizar_serializacion_mas_uno]

@idserie as int  ,
@numerofin as numeric(18,0)  
as 

update Serializacion set  numerofin=@numerofin            
where Id_serializacion=@idserie 
GO
/****** Object:  StoredProcedure [dbo].[buscar_alumnos]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_alumnos]
@letra as varchar(50)
as
select idalumno,Apellido_Paterno,Apellido_Materno,Nombres,Nro_de_documento,Estado
,Nombres +' '+ Apellido_Paterno +' '+  Apellido_Materno  from Alumnos
where  Apellido_Paterno + Apellido_Materno +Nombres+ Nro_de_documento LIKE '%' + @letra + '%'
GO
/****** Object:  StoredProcedure [dbo].[Buscar_Tipo_de_documentos_para_insertar_en_MATRICULAS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Buscar_Tipo_de_documentos_para_insertar_en_MATRICULAS]
@Tipo_de_comprobante varchar(50)
as

SELECT        dbo.Serializacion.Tipo_de_comprobante AS COMPROBANTE ,
dbo.Serializacion.numeroinicio , (dbo.Serializacion.numerofin+1) as Correlativo ,
dbo.Serializacion.Id_serializacion ,
(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.numeroinicio + dbo.Serializacion.numerofin) as serie_completa 
FROM            dbo.Serializacion 
where Serializacion.Tipo_de_comprobante=@Tipo_de_comprobante
GO
/****** Object:  StoredProcedure [dbo].[buscar_usuarios]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscar_usuarios]
@letra as varchar(50)
as
select idusuario, Nombres_y_Apellidos as Nombres,Login as Usuario, Password as Contraseña
from USUARIO2 
where  Nombres_y_Apellidos +Login  LIKE '%' + @letra + '%'

GO
/****** Object:  StoredProcedure [dbo].[editar_ALUMNO]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_ALUMNO]
@Apellido_Paterno varchar(50),
           @Apellido_Materno varchar(50),
           @Nombres varchar(50),
		    @Nro_de_documento varchar(50),
			@idalumno INT
as
if EXISTS (SELECT Nro_de_documento  FROM Alumnos where (Nro_de_documento   = @Nro_de_documento  AND idalumno <>@idalumno ))
RAISERROR ('Nº de documento en Uso, usa otro Nº de documento por favor', 16,1)
else 
update Alumnos set Nombres  =@Nombres ,Apellido_Paterno  =@Apellido_Paterno ,Apellido_Materno =@Apellido_Materno  
,Nro_de_documento=@Nro_de_documento 
where idalumno =@idalumno  

GO
/****** Object:  StoredProcedure [dbo].[editar_serializacion]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_serializacion]
@serie VARCHAR(50)  ,
@numeroinicio AS VARCHAR(50)    ,
@numerofin as varchar(50) ,
@Tipo_de_comprobante as varchar(50), 

   @Id_serie as int
as 
update Serializacion set  Serie =@serie   ,numeroinicio=@numeroinicio ,numerofin=@numerofin   
         ,Tipo_de_comprobante=@Tipo_de_comprobante
where Id_serializacion=@Id_serie 

GO
/****** Object:  StoredProcedure [dbo].[editar_usuario]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[editar_usuario]
@idusuario int,
@nombres   varchar(50),
@Login varchar(50),
@Password varchar(50)
as
if EXISTS (SELECT Login,idUsuario FROM USUARIO2 where (Login  = @login  AND idUsuario<>@idUsuario ))
RAISERROR ('Usuario en Uso, usa otro nombre de Usuario por favor', 16,1)
else 
update USUARIO2 set Nombres_y_Apellidos =@nombres ,Login =@Login,Password=@Password 
where idusuario=@idusuario 

GO
/****** Object:  StoredProcedure [dbo].[Eliminar_alumno]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Eliminar_alumno]
@idalumno int
as
update Alumnos set Estado= 'ELIMINADO'
WHERE idalumno=@idalumno AND Estado= 'ACTIVO'
GO
/****** Object:  StoredProcedure [dbo].[eliminar_Serializacion]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_Serializacion]
@id integer
as
delete from Serializacion   where Id_serializacion   =@id 
GO
/****** Object:  StoredProcedure [dbo].[eliminar_usuario]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_usuario]
@idusuario int
as
delete from usuario2 where idUsuario=@idusuario 

GO
/****** Object:  StoredProcedure [dbo].[Insertar_alumnos]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Insertar_alumnos]
@Apellido_Paterno varchar(50),
           @Apellido_Materno varchar(50),
           @Nombres varchar(50),
           @Fecha_de_nacimiento varchar(50),
           @Nro_de_documento varchar(50),
           @Estado_civil varchar(50),
          @Sexo varchar(50),
           @Nacionalidad varchar(50),
           @Telefono varchar(50),
           @Departamento varchar(50),
           @Provincia varchar(50),
           @Distrito varchar(50),
          @Direccion varchar(50),
           @Departamento2 varchar(50),
           @Provincia2 varchar(50),
           @Distrito2 varchar(50),
           @Telefono1 varchar(50),
           @Telefono2 varchar(50),
           @Correo varchar(50),
           @Profesion varchar(50),
          @Local_studio varchar(50),
           @Fecha_de_Matricula varchar(50),
           @Fecha_de_Inicio varchar(50),
           @Codigo varchar(50),
		   @Estado as int
as
IF EXISTS(sELECT Nro_de_documento From Alumnos  WHERE Nro_de_documento= @Nro_de_documento)
RAISERROR('Ya existe un Alumno con ese Numero de Documento, POR FAVOR INGRESE DE NUEVO',16,1)
ELSE
INSERT INTO Alumnos
values(
  @Apellido_Paterno ,
           @Apellido_Materno,
           @Nombres,
           @Fecha_de_nacimiento,
           @Nro_de_documento,
           @Estado_civil,
           @Sexo,
           @Nacionalidad,
           @Telefono,
           @Departamento,
           @Provincia,
           @Distrito,
           @Direccion,
           @Departamento2,
           @Provincia2,
           @Distrito2,
           @Telefono1,
           @Telefono2,
           @Correo,
           @Profesion,
           @Local_studio,
           @Fecha_de_Matricula,
           @Fecha_de_Inicio,
           @Codigo,
		   @Estado )




GO
/****** Object:  StoredProcedure [dbo].[insertar_DETALLE_CONTROL_DE_COBROS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[insertar_DETALLE_CONTROL_DE_COBROS]
@Pago_realizado as numeric(18,2),
@Fecha_que_pago as datetime,
@Nro_comprobante    as varchar(50) ,
@Detalle as varchar(max)  ,
@Grado varchar(50)   
  ,@Id_Alumno int    ,
  @Id_usuario int     
   	
as
insert into DETALLE_CONTROL_DE_COBROS  values 
            (
@Pago_realizado ,
@Fecha_que_pago ,
           @Nro_comprobante,
		   @Detalle ,@Grado,@Id_Alumno,@Id_usuario    )

GO
/****** Object:  StoredProcedure [dbo].[insertar_MATRICULA]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_MATRICULA]             
         @Grado varchar(50)
           ,@Descripcion varchar(50)
           ,@Fecha DATE
           ,@N_recibo varchar(50)
           ,@Id_alumno int
           ,@Saldo numeric(18,2)
           ,@Estado varchar(50)
           ,@Pension numeric(18,2)
         
           ,@Seccion varchar(50)
           ,@Numero_de_pension varchar(50)
           ,@Tipo_de_Institucion varchar(50)
           ,@Estado_de_matricula varchar(50),
	    @Saldo_matricula numeric(18,2),
		@Horario varchar(50),
		@Observacion VARCHAR(MAX),
		@Prioridad varchar(50)
		   AS 
		    
		   INSERT INTO MATRICULAS 
     VALUES
		     (@Grado
           ,@Descripcion
           ,@Fecha
           ,@N_recibo
           ,@Id_alumno
           ,@Saldo
           ,@Estado
           ,@Pension
      
           ,@Seccion
           ,@Numero_de_pension
           ,@Tipo_de_Institucion
           ,@Estado_de_matricula,
		   @Saldo_matricula,
		   @Horario,
		   @Observacion,
		   @Prioridad)


GO
/****** Object:  StoredProcedure [dbo].[insertar_Serializacion]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertar_Serializacion]

@Serie varchar (50),
@numeroinicio as varchar (50),
@numerofin as varchar (50),

@Tipo_de_comprobante varchar(50)
as

insert into Serializacion  values (@Serie ,
@numeroinicio ,
@numerofin ,@Tipo_de_comprobante )




GO
/****** Object:  StoredProcedure [dbo].[insertar_usuario]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_usuario]
@nombres   varchar(50),
@Login varchar(50),
@Password varchar(50)
as
IF EXISTS(sELECT Login From USUARIO2  WHERE Login= @Login)
RAISERROR('YA EXISTE UN USUARIO CON ESE LOGIN, POR FAVOR INGRESE DE NUEVO',16,1)
ELSE

insert into USUARIO2 VALUES(@nombres,@Login ,@Password )

GO
/****** Object:  StoredProcedure [dbo].[mostrar_alumnos]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_alumnos]
as
select idalumno,Apellido_Paterno,Apellido_Materno,Nombres,Nro_de_documento,Estado from Alumnos
GO
/****** Object:  StoredProcedure [dbo].[mostrar_GRADOS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_GRADOS]
as
set NOCOUNT ON;
SELECT DISTINCT Grado
from MATRICULAS
GO
/****** Object:  StoredProcedure [dbo].[mostrar_HORARIOS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_HORARIOS]
as
set NOCOUNT ON;
SELECT DISTINCT Horario
from MATRICULAS
where Horario <>''
GO
/****** Object:  StoredProcedure [dbo].[mostrar_MATRICULAS_YA_HECHAS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[mostrar_MATRICULAS_YA_HECHAS]
@Grado as varchar(50),
@Id_alumno int
AS
	
SELECT  Id_matricula   
FROM           MATRICULAS 
where Grado=@Grado and Id_alumno=@Id_alumno 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_Precio_de_MATRICULA]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   proc [dbo].[mostrar_Precio_de_MATRICULA]
@Grado as varchar(50)
AS
	
SELECT  Pension  
FROM           MATRICULAS 
where Grado =@Grado and MATRICULAS.Descripcion ='MATRICULA' ORDER BY MATRICULAS.Id_matricula DESC
GO
/****** Object:  StoredProcedure [dbo].[mostrar_SECCIONES]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_SECCIONES]
as
set NOCOUNT ON;
SELECT DISTINCT Seccion
from MATRICULAS
GO
/****** Object:  StoredProcedure [dbo].[mostrar_Tipo_de_documentos_para_insertar_en_MATRICULAS]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Tipo_de_documentos_para_insertar_en_MATRICULAS]
as

SELECT        dbo.Serializacion.Tipo_de_comprobante AS COMPROBANTE ,
dbo.Serializacion.numeroinicio , (dbo.Serializacion.numerofin+1) as Correlativo ,
dbo.Serializacion.Id_serializacion ,
(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.numeroinicio + dbo.Serializacion.numerofin) as serie_completa 
FROM            dbo.Serializacion 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_Tipo_de_documentos_para_insertar_estos_mismos]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_Tipo_de_documentos_para_insertar_estos_mismos]
as

SELECT       dbo.Serializacion.Serie ,dbo.Serializacion.numeroinicio , dbo.Serializacion.numerofin ,dbo.Serializacion.Id_serializacion ,(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.numeroinicio + dbo.Serializacion.numerofin) as serie_completa,Serializacion.Tipo_de_comprobante AS COMPROBANTE

FROM            dbo.Serializacion 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_usuario]
as
select idusuario, Nombres_y_Apellidos as Nombres,Login as Usuario, Password as Contraseña
from USUARIO2 


GO
/****** Object:  StoredProcedure [dbo].[Restaurar_alumno]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Restaurar_alumno]
@idalumno int
as
update Alumnos set Estado= 'ACTIVO'
WHERE idalumno=@idalumno AND Estado= 'ELIMINADO'
GO
/****** Object:  StoredProcedure [dbo].[validar_usuario]    Script Date: 06/02/2020 17:53:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[validar_usuario]
@login varchar(50),
@password varchar(50)
as
select * from USUARIO2 
where Login =@login and Password    = @password 

GO
USE [master]
GO
ALTER DATABASE [BASECOLEGIO] SET  READ_WRITE 
GO
