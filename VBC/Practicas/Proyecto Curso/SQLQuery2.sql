create proc eliminar_usuario
@idusuario int 
as
delete from USUARIO2 where idusuario=@idusuario