using System;
using System.Collections.Generic;
using System.Text;

namespace _01_Conociendo.Enumerations
{
    enum Genero
    {
        Masculino,
        Femenino,
        Otro
    }

    //Por defecto cada elemento guarda el valor de su posicion, pero esto puede modificarse por ejemplo:
    /*
    enum Genero
    {
        Masculino = 3,
        Femenino = 50,
        Otro = 0
    }
    */
}
