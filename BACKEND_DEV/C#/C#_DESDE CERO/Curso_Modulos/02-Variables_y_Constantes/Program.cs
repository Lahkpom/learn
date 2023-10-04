using System;

namespace _02_Variables_y_Constantes
{
    class Program
    {
        static void Main(string[] args)
        {
            // 2.1 - Definición de variables, constantes y asignación de valor

            string nombre = "Leonel";
            var apellido = "Hidalgo";
            // apellido = 1; Daría error ya que no podemos convertir string a int

            const string FIJO = "Esto no se puede cambiar";
            //const var xxx = xxx; Esto da error ya que no podemos declarar una constante sin especificar el type

            Console.WriteLine(nombre + " " + apellido);
            Console.WriteLine(FIJO);

            //2.2 - Tipo string

            Console.WriteLine("Mi nombre tiene " + nombre.Length + " letras");
            Console.WriteLine(string.Format("Mi nombre tiene {0} letras", nombre.Length));
        }
    }
}
