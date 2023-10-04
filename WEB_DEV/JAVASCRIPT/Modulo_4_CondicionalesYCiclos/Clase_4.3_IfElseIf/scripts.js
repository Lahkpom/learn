/**
 * if (condicion) {
 *      accion
 * } else if (2da condicion) {
 *      otra accion
 * } else {
 *      otra condicion
 * }
 */

//* Para entrar a la fiesta tenes que tener más de 18 y menos de 65, sino te quedas en casa, a menos que 
//* tengas permiso de tus padres

let persona = "leonel hidalgo"
let edad = 16
let permiso = true

if (edad >= 18 && edad < 65) {
    console.log(`${persona}, puedes venir a la fiesta`)
} else if (edad < 18 && permiso === true) {
    console.log(`${persona}, puedes venir a la fiesta porque tienes permiso`)
} else {
    console.log(`${persona}, quedate en casa`)
}

