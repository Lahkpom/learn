//! Ejemplo 1

console.log(document.getElementById('title'))

const titulo = document.getElementById('title')
console.log(titulo)

//! Ejemplo 2

console.log(document.querySelector('#title'))

const titulo2 = document.querySelector('#title')
console.log(titulo2)

//! Ejemplo 3

const listaTipos = document.querySelectorAll('ul li')

console.log(listaTipos)
console.log(listaTipos[0])
console.log(listaTipos[2])

//? Ejemplo  4

const lista2 = document.getElementById('listaPrincipal')

console.log(lista2)
console.log(lista2.querySelector('li:last-child'))

