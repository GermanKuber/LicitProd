﻿using LicitProd.Data.Infrastructure.Objects;
using LicitProd.Entities;

namespace LicitProd.Data.ToDbMapper
{
    public class UsuarioRolDbMapper : ObjectToDbMapper<UsuarioRolDbMapper.UsuarioRol>
    {
        public UsuarioRolDbMapper() : base("Usuario_Rol")
        {
        }
        protected override void Map()
        {
            Set(x => x.Id)
                .PrimaryKey();
        }
        public class UsuarioRol: Entity
        {
            public int UsuarioId { get; set; }
            public int RolId { get; set; }
        }
    }
}