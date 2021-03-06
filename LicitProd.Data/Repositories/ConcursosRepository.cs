﻿using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using LicitProd.Entities;

namespace LicitProd.Data.Repositories
{

    public class ConcursosRepository : BaseRepository<Concurso>
    {
        private ConcursoProveedorRepository _concursoProveedorRepository = new ConcursoProveedorRepository();
        private CompradorRepository _compradorRepository = new CompradorRepository();
        public new async Task<Response<List<Concurso>>> Get()
        {
            return (await GetAsync()).Success(async concursos =>
            {
                var finalResponse = Response<List<Concurso>>.Ok(concursos);

                foreach (var concurso in concursos)
                {
                    if (!concurso.IsValid)
                        finalResponse = Response<List<Concurso>>.Error("Concursos corrompidos");
                    else
                        await FillConcurso(concurso);
                }
                return finalResponse;
            });
        }

        public async Task<Response<List<Concurso>>> GetAsync()
        {
            var concursos = await base.GetAsync();
            foreach (var concurso in concursos.Result)
            {

                await FillConcurso(concurso);
                if (concurso.FechaApertura < DateTime.Now && concurso.Status != (int)ConcursoStatusEnum.Abierto
                                                          && concurso.Status != (int)ConcursoStatusEnum.Cerrado)
                {
                    concurso.Status = (int)ConcursoStatusEnum.Abierto;
                    await UpdateDataAsync(concurso);
                }

            }


            return concursos;
        }

        private async Task FillConcurso(Concurso concurso)
        {
            concurso.ConcursoProveedores = (await _concursoProveedorRepository.GetByConcursoId(concurso.Id)).Result;
            concurso.Comprador = (await _compradorRepository.GetByIdAsync(concurso.CompradorId)).Result;
        }
        public async Task<Response<Concurso>> GetByIdAsync(int id)
        {
            var concurso = await base.GetByIdAsync(id);
            await FillConcurso(concurso.Result);
            return concurso;
        }

        public async Task<Concurso> Insert(Concurso concurso)
        {
            await SqlAccessService.InsertDataAsync(concurso);
            await new DigitoVerificadorRepository().Validate<ConcursoVerificable>(
                DigitoVerificadorTablasEnum.Concursos);
            return concurso;
        }
    }
}
