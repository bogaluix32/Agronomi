﻿using DataLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class BL_Resultados
    {
        private DL_Resultados objDL_Resultados = new DL_Resultados();
        private DL_Terreno objDL_Terrenos = new DL_Terreno();
        private Resultados objResultados;

        private Resultados Constructor(int usuario, string idTerreno)
        {
            objDL_Resultados.GetCostos(usuario, idTerreno);

            objResultados = new Resultados();

            objResultados.Mantenimiento = objDL_Resultados.costoMantenimiento.ToString();
            objResultados.Labranza = objDL_Resultados.costoLabranza.ToString();
            objResultados.Siembra = objDL_Resultados.costoSiembra.ToString();
            objResultados.Tratamiento = objDL_Resultados.costoTratamiento.ToString();
            objResultados.Cosecha = objDL_Resultados.costoCosecha.ToString();
            objResultados.Cultivo = objDL_Resultados.areaCultivo.ToString();

            return objResultados;
        }

        private decimal CalcularCostoProduccion(int usuario, string idTerreno)
        {
            return (Convert.ToInt32(objResultados.Tratamiento) + Convert.ToInt32(objResultados.Labranza) +
                Convert.ToInt32(objResultados.Siembra) + Convert.ToInt32(objResultados.Mantenimiento)
                + Convert.ToInt32(objResultados.Cosecha)) / Convert.ToInt32(objResultados.Cultivo);
        }

        public List<Resultados> ListarResultados(int usuario, string idTerreno)
        {
            List<Resultados> resultados = new List<Resultados>();

            if (idTerreno == "1")
            {
                // Listar todos los terrenos
                foreach (var terreno in objDL_Terrenos.ListarTerrenos(usuario))
                {
                    var objResultados = Constructor(usuario, terreno.idTerreno);
                    objResultados.Produccion = CalcularCostoProduccion(usuario, terreno.idTerreno).ToString();
                    objResultados.idTerreno = terreno.idTerreno;

                    resultados.Add(objResultados);
                }
                // Calcular y agregar los totales por categoría
                var totalesPorCategoria = CalcularTotalesPorCategoria(resultados);
                resultados.Add(totalesPorCategoria);
            }
            else
            {
                // Listar solo el terreno especificado
                var objResultados = Constructor(usuario, idTerreno);
                objResultados.Produccion = CalcularCostoProduccion(usuario, idTerreno).ToString();
                objResultados.idTerreno = idTerreno;

                resultados.Add(objResultados);
            }

            return resultados;
        }

        private Resultados CalcularTotalesPorCategoria(List<Resultados> resultados)
        {
            var totalesPorCategoria = new Resultados
            {
                idTerreno = "Totales", // IdTerreno vacío para representar los totales
                Tratamiento = "0",
                Labranza = "0",
                Siembra = "0",
                Mantenimiento = "0",
                Cosecha = "0",
                Produccion = "0"
            };

            foreach (var resultado in resultados)
            {
                double costo;
                if (double.TryParse(resultado.Tratamiento, out costo))
                    totalesPorCategoria.Tratamiento = (double.Parse(totalesPorCategoria.Tratamiento) + costo).ToString();
                if (double.TryParse(resultado.Labranza, out costo))
                    totalesPorCategoria.Labranza = (double.Parse(totalesPorCategoria.Labranza) + costo).ToString();
                if (double.TryParse(resultado.Siembra, out costo))
                    totalesPorCategoria.Siembra = (double.Parse(totalesPorCategoria.Siembra) + costo).ToString();
                if (double.TryParse(resultado.Mantenimiento, out costo))
                    totalesPorCategoria.Mantenimiento = (double.Parse(totalesPorCategoria.Mantenimiento) + costo).ToString();
                if (double.TryParse(resultado.Cosecha, out costo))
                    totalesPorCategoria.Cosecha = (double.Parse(totalesPorCategoria.Cosecha) + costo).ToString();
                if (double.TryParse(resultado.Produccion, out costo))
                    totalesPorCategoria.Produccion = (double.Parse(totalesPorCategoria.Produccion) + costo).ToString();
            }

            return totalesPorCategoria;
        }

    }
}