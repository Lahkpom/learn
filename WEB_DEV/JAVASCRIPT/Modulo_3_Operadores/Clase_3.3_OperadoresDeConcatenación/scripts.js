//* El operador + tambien se utiliza para concatenar variables

let nombre = "leonel"
let apellido = 'hidalgo'
let nombreCompleto = nombre + " " + apellido

//* Otra forma de escribir un String es con Template, que utiliza la tilde invertida
//! Esta forma permite poner variables dentro, utilizando ${variable}:

let nickName = `Mi nombre es: ${nombre}, y mi apellido es: ${apellido}`
console.log(nickName)

let cuenta = `20 * 10 = ${20*10}`
console.log(cuenta)