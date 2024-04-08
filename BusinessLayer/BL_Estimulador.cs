﻿using DataLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class BL_Estimulador
    {
        private DL_Estimulador objDL_Estimulador = new DL_Estimulador();

        //This method allow to list the seleccion data
        public List<Estimulador> ToList(int usuario)
        {
            return objDL_Estimulador.ToList(usuario);
        }

        //This method allow to insert data
        public int InsertarDatosEstimulador(Estimulador objEstimulador, out string message)
        {
            //Falta validación de datos

            return objDL_Estimulador.InsertarDatosEstimulador(objEstimulador, out message);
        }
    }
}