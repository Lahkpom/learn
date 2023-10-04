/**
 * if (condicion) {
 *      accion
 * } else {
 *      otra accion
 * }
 */

//* Para entrar a la fiesta tenes que tener más de 18 y menos de 65, sino te quedas en casa

let persona = "leonel hidalgo"
let edad = 16

if (edad >= 18 && edad < 65) {
    console.log(`${persona}, puedes venir a la fiesta`)
} else {
    console.log(`${persona}, quedate en casa`)
}

