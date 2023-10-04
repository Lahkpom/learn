//! Operadores de comparación:

//Estas se pueden hacer tanto con números como con Strings:
//* ==
//* ===
//* !=
//* !==

//Estas se pueden hacer solo con números:
//* <
//* >
//* <=
//* >=

//? JavaScript no compara tipos de datos, compara los valores
//? por lo tanto, lo siguiente darían como resultado "true" y "false":

console.log(50 == "50")
console.log(50 != "50")

//? Para evitar errores, existen otros operadores que son "===" y !==, en este caso compara valor y tipo
console.log(50 === "50")
console.log(50 !== "50")

//! PERO NO DA ERROR POR COMPRAR DIFERENTES TIPOS DE DATOS
