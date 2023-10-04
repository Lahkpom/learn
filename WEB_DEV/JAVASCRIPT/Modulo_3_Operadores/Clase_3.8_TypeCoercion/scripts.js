//! Convertir un tipo de dato en otro

let a = 5
let b = "5"

let c = a + b //(Esto va a concatenarlo (55) y no sumarlo (10), ya que el +, si alguno de los valores es String convierte todo a String)
console.log(c)

c = a - b //(Esto va a dar como resultado 0 cero, hace la operación ya que la resta es exclusivo de números, y convierte el String a nro)
console.log(c)
c = a * b
console.log(c)

a = "5"
b = "5"
c = a * b
console.log(c)

a = "5"
b = "5l"
c = a * b //Esto ya da error NaN (not a number) ya que hay un caracter que no es nro
console.log(c)

a = true
b = true
c = a + b
console.log(c) //Esto da 2, ya que busca hacer una operacion aritmetica, y la unica formar es usar el valor bit de cada booleano

a = true
b = false
c = a + b
console.log(c)

a = true
b = true
c = a - b
console.log(c)