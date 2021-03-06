﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using LicitProd.Data.Infrastructure;
using LicitProd.Data.Infrastructure.Infrastructure;
using LicitProd.Data.Infrastructure.Objects;
using LicitProd.Entities;
using LicitProd.Infrastructure;

namespace LicitProd.Data.Repositories
{
    public static class EntityToColumns<TEntity> where TEntity : IEntityToDb, new()
    {

        private static ObjectToDbMapper<TEntity> CreateMapper()
        {
            var types = new List<Type>();
            Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
            assemblies.Select(assembly => ReflectionHelper.GetClassesImplementingAnInterface<ObjectToDbMapper<TEntity>>())
                                ?.ToList()
                                .ForEach(x => x.ToList().ForEach(xType => types.Add(xType)));

            var type = types.FirstOrDefault(x => x.FullName.Contains(typeof(TEntity).Name));

            if (type == null)
                throw new Exception("El mapper requerido no existe : " + type.ToString());
            return (ObjectToDbMapper<TEntity>)Activator.CreateInstance(type);
        }
        public static async Task<Columns> MapAsync()
        {

            var columns = new Columns();
            var objectToDbMapper = await ObjectToDbMapperFactory<TEntity>.Create();
            ReflectionHelper.GetListOfProperties<TEntity>()
                .ToList()
                .ForEach(prop =>
            {
                var columnName = prop.Name;
                var ignore = false;
                objectToDbMapper.GetColumnName(prop.Name)
                    .Success(x =>
                    {
                        if (!x.IsIgnore)
                        {
                            if (!string.IsNullOrWhiteSpace(x.ColumnName))
                                columnName = x.ColumnName;
                        }
                        else
                            ignore = true;
                    });
                if (!ignore)
                    columns.Add(columnName);
            });
            return columns;
        }
    }
}
