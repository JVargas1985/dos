
create proc editar_usuario
@idusuario int,
@nombres varchar(50),
@login varchar(50),
@password varchar(50)
as
update USUARIO2 set Nombres__y_Apellidos =@nombres ,Login=@login ,Password=@password 
where idusuario=@idusuario