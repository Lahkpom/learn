using System;

namespace Ciclos
{
    class Program
    {
        static void Main(string[] args)
        {
            #region 3.4 - Ciclo for



            #endregion

            #region 3.5 - Ciclo While


            #endregion

            #region 3.6 - Ciclo for each

            var coleccion = new int[] { 0, 1, 2, 3, 4, 5 };
            
            foreach (var item in coleccion)
            {
                Console.WriteLine(item);
            }

            for (int i = 0; i < coleccion.Length; i++)
            {
                Console.WriteLine(coleccion[i]);
            }
            #endregion

            

        }
    }
}
