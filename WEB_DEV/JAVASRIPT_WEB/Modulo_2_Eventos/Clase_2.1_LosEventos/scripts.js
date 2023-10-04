//! ONCLICK
const mensaje = () => alert("Estos son los métodos vistos en esta clase")

//! ADDEVENTLITENER
const title = document.getElementById('eventListener')

/*
* title.addEventListener('click', () => {
*     alert("Este es el eventList")
* })
*/

//*Otra forma:

const mensaje2 = () => alert("Este es el eventListener")

title.addEventListener('click', mensaje2)

//*Ahora que tengo una funcion, puedo reutilizarla por ejemplo con un botón
document.querySelector('button').addEventListener('click', mensaje2)

//! Otra forma
//*Como hacer para que lea automáticamente el texto del valor del elemento y no tener que 
//*escribirlo a mano en el código:

const title2 = document.getElementById('otro')

const mensaje3 = e => alert(e.target.textContent)

title2.addEventListener('click', e => {
    mensaje3(e)
})

const boton2 = document.getElementById('boton2')

boton2.addEventListener('click', e => {
    mensaje3(e)
})