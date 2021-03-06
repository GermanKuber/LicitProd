﻿using LicitProd.Data.Infrastructure.Infrastructure;
using LicitProd.Entities;
using System.Linq;
using System.Threading.Tasks;

namespace LicitProd.Data.Repositories
{
    public class CompradorRepository : BaseRepository<Comprador>
    {
        private UsuarioRepository _usuarioRepository = new UsuarioRepository();
        public async Task<Response<Comprador>> GetByUserId(int userId) =>
      ReturnResult((await GetAsync(new Parameters()
              .Add("Usuario_Id", userId)
              .Send()))
          .Map(result => Response<Comprador>.Ok(result.First()),
              errors => Response<Comprador>.Error(errors))
          .Success(p => p));

        public new async Task<Response<Comprador>> GetByIdAsync(int id)
        {
            var comprador = await base.GetByIdAsync(id);
            comprador.Result.Usuario = (await _usuarioRepository.GetByIdAsync(comprador.Result.UsuarioId)).Result;
            return comprador;
        }
    }

}
