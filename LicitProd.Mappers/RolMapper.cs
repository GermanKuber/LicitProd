﻿
using LicitProd.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using LicitProd.Data.Infrastructure.Objects;

namespace LicitProd.Mappers
{
    public class RolMapper : IDbToObjectMapper<Rol>
    {
        public Rol Map(DataTable dataTable)
        {
            var permissions = new List<(int ParentRolId, SinglePermission Permission)>();
            var roles = new List<(int? ParentRolId, Rol Rol)>();
            foreach (DataRow item in dataTable.Rows)
            {
                if (item["Type"].ToString() == "Permiso")
                    permissions.Add((int.Parse(item["RolId"].ToString()),
                                     new SinglePermission(int.Parse(item["PermisoId"].ToString()),
                                                         (PermissionsEnum)Enum.Parse(typeof(PermissionsEnum), item["Nombre"].ToString(), true))));
                else if (item["Type"].ToString() == "Rol")
                    roles.Add((TryParse(item["RolId"].ToString()),
                                        new Rol(int.Parse(item["Id"].ToString()),
                                                item["Nombre"].ToString(),
                                                bool.Parse(item["ByDefault"].ToString()))));
            }
            permissions.ForEach(permission =>
                roles.FirstOrDefault(x => x.Rol.Id == permission.ParentRolId).Rol.Add(permission.Permission));

            roles.Where(x => x.ParentRolId != null)
                 .ToList()
                 .ForEach(rolEach => roles.FirstOrDefault(x => x.Rol.Id == rolEach.ParentRolId).Rol.Add(rolEach.Rol));

            return roles.FirstOrDefault(x => x.ParentRolId == null).Rol;
        }

        public List<Rol> MapList(DataTable dataTable)
        {
            var permissions = new List<(int? ParentRolId, Permission Permission)>();
            var roles = new List<(int? ParentRolId, Rol Rol)>();
            foreach (DataRow item in dataTable.Rows)
            {
                if (item["Type"].ToString() == "Permiso")
                    permissions.Add((int.Parse(item["RolId"].ToString()),
                                     new SinglePermission(int.Parse(item["PermisoId"].ToString()),
                                                         (PermissionsEnum)Enum.Parse(typeof(PermissionsEnum), item["Nombre"].ToString(), true))));
                else if (item["Type"].ToString() == "Rol")
                {
                    var existRoll = permissions.FirstOrDefault(x => x.Permission.Nombre.ToString() == item["Nombre"].ToString());
                    if (existRoll.Permission == null)
                        existRoll.Permission = new Rol(int.Parse(item["Id"].ToString()),
                                               item["Nombre"].ToString(),
                                               bool.Parse(item["ByDefault"].ToString()));
                    permissions.Add((TryParse(item["RolId"].ToString()), existRoll.Permission));
                }

            }
            permissions.Where(x => x.ParentRolId != null).ToList().ForEach(permission =>
                 permissions.FirstOrDefault(x => x.Permission.Id == permission.ParentRolId).Permission.Add(permission.Permission));

            return permissions.Where(x => x.ParentRolId == null)?.ToList().Select(x=> (Rol)x.Permission).ToList();
        }
        private int? TryParse(string value)
        {
            if (int.TryParse(value, out int tryValue))
                return tryValue;
            return null;
        }
    }
}
