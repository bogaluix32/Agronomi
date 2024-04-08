﻿using DataLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class BL_Nematicidas
    {
        private DL_Nematicidas objDL_Nematicidas = new DL_Nematicidas();

        //This method allow to list the seleccion data
        public List<Nematicidas> ToList(int usuario)
        {
            return objDL_Nematicidas.ToList(usuario);
        }

        //This method allow to insert data
        public int InsertarDatosNematicidas(Nematicidas objNematicidas, out string message)
        {
            //Falta validación de datos

            return objDL_Nematicidas.InsertarDatosNematicidas(objNematicidas, out message);
        }
    }
}