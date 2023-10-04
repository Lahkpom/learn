using System;

namespace Condicionales
{
    class Program
    {
        static void Main(string[] args)
        {
            #region 3.1 - Condicional simple

            Console.WriteLine("Ingrese su edad");
            //var edad = int.Parse(Console.ReadLine());
            var edad = 68;

            if(edad >= 18)
            {
                Console.WriteLine("Eres mayor de edad");

                if (edad >= 65)
                {
                    Console.WriteLine("Perteneces a la 3ra edad");
                }
            }
            else
            {
                Console.WriteLine("No eres mayor de edad");
            }

            #endregion

            #region 3.2 - And, Or, operador de negación

            if (edad >= 65)
            {
                Console.WriteLine("Eres mayor de edad");
                Console.WriteLine("Perteneces a la 3ra edad");
            }
            else if (edad >= 18)
            {
                Console.WriteLine("Eres mayor de edad");
            }
            else
            {
                Console.WriteLine("No eres mayor de edad");
            }

            #endregion

            #region 3.3 - Condicional como expresión

            //Validar si lo que se ingresa es un numero correcrto
            //La expresion se usa para reducir la escritura:
            // ? consiulta si la condicion es verdadera
            // a continuacion se coloca lo que se desea que se ejecute en dicho caso
            // : sino, si es false
            // Y a continuacion se coloca lo que se desea en caso que sea false
            /*
             * CONDICION ? RESULTADO_TRUE : RESULTADO_FALSE;
             */

            //En este caso en particular intenta castear usando el método int.TryParse()
            // in.TryParse(VARIABLE_QUE_SE_DESEA_CASTERA, out TIPO_DATO NOMBRE_VARIABLE)
            // esto devuelve un bool, y aparte crea la variable que se declara por parámetro
            // en caso de true se setea con el valor ingresado de typo string
            // en caso false también se crea la variable pero se setea con el valor por defecto del type, en el caso int = 0

            Console.WriteLine("Ingrese su edad");
            var edadString = Console.ReadLine();

            bool aux = int.TryParse(edadString, out int edadNum);

            Console.WriteLine(aux ? "Calculando edad..." : "Edad inválida");

            if(aux) Console.WriteLine($"La edad ingresada fue {edadNum}");

            #endregion



        }
    }
}
