create proc buscar_usuarios
@letra as varchar(50)
as
select idusuario, Nombres__y_Apellidos as Nombres, Login as Usuario, Password as Contraseña
from USUARIO2
where Nombres__y_Apellidos+login like'%'+ @letra + '%'