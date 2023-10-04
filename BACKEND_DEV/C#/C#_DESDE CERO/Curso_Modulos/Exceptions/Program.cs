using System;

namespace Exceptions
{
    class Program
    {
        static void Main(string[] args)
        {
            #region 3.7 - Manejo de excepciones

            try
            {
                Console.WriteLine("Ingrese un nro");
                var nroStrign = Console.ReadLine();
                int nro = int.Parse(nroStrign);
                Console.WriteLine($"El nro ingresado es {nro}");
            }
            catch (FormatException fe)
            {
                Console.WriteLine("Entro al format exception");
                Console.WriteLine();
                Console.WriteLine(fe.Message);
                Console.WriteLine();
                Console.WriteLine(fe.StackTrace);
            }
            catch (Exception e)
            {

                Console.WriteLine("Entro al exception");
                Console.WriteLine(e.Message);
                Console.WriteLine(e.StackTrace);

            }

            #endregion
        }
    }
}
