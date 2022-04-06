create proc validar_usuario
@login varchar (50),
@password varchar(50)
as
select*from USUARIO2
where login =@login and Password=@password