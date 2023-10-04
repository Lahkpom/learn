using System;
using _01_Conociendo.Enumerations;

namespace Modulos
{
    class Program
    {
        static void Main(string[] args)
        {
            #region 1 Conociendo

            Console.WriteLine("Hello World!"); //Sintaxis para imprimir por consola

            var hola = "Hello World"; //var es para variables genéricas, no es cono javascript que la var puede tomar cualquier valor
                                      //Solo puede tomar valores acorde al type con la que fue declarada

            Console.WriteLine(hola);

            Console.WriteLine("Escribi algo");

            var input = Console.ReadLine(); //Sintaxis para capturar por teclado

            Console.WriteLine("Escribiste: " + input);
            #endregion

            #region 2.1 - Definición de variables, constantes y asignación de valor

            string nombre = "Leonel";
            var apellido = "Hidalgo";
            // apellido = 1; Daría error ya que no podemos convertir string a int

            const string FIJO = "Esto no se puede cambiar";
            //const var xxx = xxx; Esto da error ya que no podemos declarar una constante sin especificar el type

            Console.WriteLine(nombre + " " + apellido);
            Console.WriteLine(FIJO);
            #endregion

            #region 2.2 - Tipo string

            Console.WriteLine("Mi nombre tiene " + nombre.Length + " letras");
            Console.WriteLine(string.Format("Mi nombre tiene {0} letras", nombre.Length));
            Console.WriteLine($"Mi nombre tiene {nombre.Length} letras");//Hay que poner el $ al inicio
            
            //Metodo TRIM()
            //Suponiendo que la cadena tenga espacios en blanco al pincipio y al final se pueden eliminar con la funcion trim
            string ej1 = " 1 2 3 4 ";//Si usara el length no daria 4
            Console.WriteLine(ej1.Length);//da 9 porque cuenta los espacios en blanco
            Console.WriteLine(ej1.Trim().Length);//con este elimina los del principio y del final
            Console.WriteLine(ej1.TrimEnd().Length);//con este solo los del final
            Console.WriteLine(ej1.TrimStart().Length);//con este solo los del principio

            //Metodo REPLACE("", "")
            //Este metodo reemplaza el primer valor por el segundo
            //Por ejemplo si quiero eliminar todos los espacios:
            Console.WriteLine(ej1.Replace(" ", "").Length);//Asi eliminamos todos los espacios que puedan existir
            #endregion

            #region 2.3 - Tipos de variables numéricas

            var ej2 = 20; //Por dejecto lo inicializa como int

            Console.WriteLine(ej2);

            short ej3 = 15; //para datos de hasta 32.767 digitos que ocupa 16bits en memoria
            Int16 ej4 = 16; //Es otra forma de escribir el short
            float ej5 = 1.5f; // Para decimales con 6 a 9 digitos despues de la coma, debe tener la f al final
            double ej6 = 1.6; // para 15 a 17 digitos despues de la coma
            Console.WriteLine($"{ej3}{ej4}{ej5}{ej6}");
            #endregion

            #region 2.4 - Tipo Fecha

            //Esta compuesta por año mes dia horas minutos segundos y milisegundos


            //nuestra fecha de nacimiento, en el paraamtro debemos poner año, mes y dia
            DateTime fNacimiento = new DateTime(1998, 12, 03);
            Console.WriteLine($"Fecha completa {fNacimiento}");
            Console.WriteLine($"año {fNacimiento.Year}");
            Console.WriteLine($"mes {fNacimiento.Month}");
            Console.WriteLine($"dia {fNacimiento.Day}");

            Console.WriteLine($"Fecha sin hora {fNacimiento.Date.ToShortDateString()}");

            //Para manipular el orden lo hacemos pasandole por parametros
            Console.WriteLine($"Fecha modificada {fNacimiento.Date.ToString("MM/dd/yyyy")}");

            //calcular edad:

            var fActual = DateTime.Now;
            var edad = fActual - fNacimiento;

            Console.WriteLine($"Tu edad es de: {edad.Days / 365}");
            #endregion

            #region 2.5 - Enums

            //Para limpiar el codigo debemos crear los enum en un folder aparte
            //hacer click derecho en el proyecto, agregar, neva carpeta, y llamarla Enumerations
            //Se crea un enum de prueba
            //Hay de clarar el Using en las primeras lineas de la clase 

            var miGenero = Genero.Femenino;

            Console.WriteLine(miGenero);
            Console.WriteLine(miGenero.GetHashCode()); //Este da el valor de la posicion
            #endregion

            #region 2.6 - Tipo Null y nullables

            //Por defecto las clases no pueden instanciarse como nulas, ya que son not null
            //Para poder declarar null a una variable debemos ponerle un ? de la siguiente forma:

            DateTime? xxxxx = null;

            //Para poder imprimir, no puede ser nulo el dato ya que lanzara una excepcion no controlada
            //Para controlarla, debemos poner un ? detras de la variable, para que solo muestre el dato en caso de no se nulo
            Console.WriteLine($"fecha nula: {xxxxx?.Date}");
            #endregion

            #region 2.7 - Tipo bool

            bool aux = true;
            bool aux2 = false;

            Console.WriteLine(aux + "" + aux2);
            #endregion

            #region 2.8 - Comentarios y regiones


            //Comentario de linea simple
            /*
             * comentario multilinea
             */

            #region nombreDeLaRegion
            //acá va el código que queremos agrupar
            //
            //
            //
            #endregion
            #endregion

            #region 3.1 - Condicional simple

            //Se pone en otro proyecto

            #endregion

        }
    }
}
