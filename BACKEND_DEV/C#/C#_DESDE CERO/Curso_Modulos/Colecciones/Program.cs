using System;
using System.Collections.Generic;

namespace Colecciones
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            #region 4.1 - Creación y asignación de valores

            int[] listaNros = new int[5];

            listaNros[0] = 1;
            listaNros[1] = 2;
            listaNros[2] = 3;
            listaNros[3] = 4;
            listaNros[4] = 5;

            int[] listaNros2 = new int[5] { 1, 2, 3, 4, 5 };

            #endregion

            #region 4.2 - Iteración de colecciones usando for y foreach

            for (int i = 0; i < listaNros.Length; i++)
            {
                Console.WriteLine($"Ingrese un Nro para la posición {i}");
                listaNros[i] = int.Parse(Console.ReadLine());
            }

            foreach (var item in listaNros)
            {
                Console.WriteLine(item);
            }

            #endregion
            
            #region 4.3 - Diccionarios

            //Se componen de una clave y un valor

            Dictionary<int, int> diccionario = new Dictionary<int, int>();

            //Hagamos un programa que solicite al usuario un valor numerico y no se detenga hasta que el ingrese un '.'

            Console.WriteLine("################################################################################");

            string input = "";

            Console.WriteLine("Ingrese un número o un Punto para finalizar: ");
            input = Console.ReadLine();

            while (input != ".")
            {
                try
                {
                    diccionario.Add(int.Parse(input), int.Parse(input));
                }
                catch (FormatException)
                {
                    Console.WriteLine("Solo puede ingresar números enteros.");                    
                }
                catch (Exception)
                {
                    Console.WriteLine("Los números ingresados no pueden estar repetidos.");                    
                }
                finally
                {
                    Console.WriteLine();
                    Console.WriteLine("Ingrese otro número o un Punto para finalizar: ");
                    input = Console.ReadLine();
                }
            }

            foreach (var item in diccionario)
            {
                Console.WriteLine($"La key es {item.Key} y el valor es {item.Value}");
            }
            
            //############################################################################

            //La forma mas comun de hacer una key es usando el metodo Guid que genera una clave automatica y una, pero es alfanumerica 
            //por lo que hay que redefinir nuestra key del diccionario como string

            var diccionario2 = new Dictionary<string, int>();

            string input2 = "";

            Console.WriteLine("Ingrese un número o un Punto para finalizar: ");
            input2 = Console.ReadLine();

            while (input2 != ".")
            {
                try
                {
                    diccionario2.Add(Guid.NewGuid().ToString(), int.Parse(input2));
                }
                catch (FormatException)
                {
                    Console.WriteLine("Solo puede ingresar números enteros.");
                }
                catch (Exception)
                {
                    Console.WriteLine("Los números ingresados no pueden estar repetidos.");
                }
                finally
                {
                    Console.WriteLine();
                    Console.WriteLine("Ingrese otro número o un Punto para finalizar: ");
                    input2 = Console.ReadLine();
                }
            }

            foreach (var item in diccionario2)
            {
                Console.WriteLine($"La key es {item.Key} y el valor es {item.Value}");
            }

            #endregion
            */
            #region 4.4 - Listas



            #endregion

        }
    }
}
