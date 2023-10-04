//! EJEMPLO 1

const ejemplo1 = document.getElementById('title')

console.log(ejemplo1)
console.log(ejemplo1.textContent)

let titulo = ejemplo1.textContent

console.log(titulo)

let titulo2 = document.getElementById('title').textContent

console.log(titulo2)
console.log(typeof titulo2)

//! EJEMPLO 2

const ejemplo2 = document.getElementById('title')

console.log(ejemplo2.innerHTML)

//! EJEMPLO 3

const ejemplo3 = document.getElementById('title')

console.log(ejemplo3.outerHTML)

//! EJEMPLO 4

const aux = document.getElementById('title')

//* Ir desbloqueando de a una
//aux.textContent = "Esto es agregado"
//aux.textContent = aux.textContent + " / Esto es agregado"
//aux.textContent = "Esto es <em>agregado</em>"
//aux.innerHTML = "Esto es <em>agregado</em>"
//aux.innerHTML = aux.textContent + " / Esto es <em>agregado</em>"


//! PRUEBAS MIAS

const prueba = document.getElementById('listaPrincipal')

console.log(prueba)
console.log(typeof prueba)
console.log(prueba.textContent)
console.log(prueba.innerHTML)
console.log(prueba.outerHTML)