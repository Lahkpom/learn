//! Operadores Unarios

//* ++ para sumar en 1
//* -- para restar en 1


//! Operadores Ternarios
//? Se trata de darle un valor u otro a una variable con una condición:
//? let variable = (condicion) ? (valor a tomar si es true) : (valor a tomar si es false)
//? El ? consulta si la condición es verdadera, el : sería el else
//? Los valores a asignar tanto en caso true como false pueden ser de cualquier tipo

let a = 5
let b = 8

let c = b > a ? "SI" : "NO"

console.log(c)

c = b > a ? 50 : false

console.log(c)