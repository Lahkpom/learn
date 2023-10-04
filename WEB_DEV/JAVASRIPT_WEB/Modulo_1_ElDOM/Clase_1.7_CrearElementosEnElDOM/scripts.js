//! EJEMPLO 1

const profesor = document.createElement('h2')

profesor.textContent = 'Leonel Hidalgo'
profesor.id = 'teacher'
profesor.classList.add('teacher')

console.log(profesor)

const profesor2 = document.createElement('p')

profesor2.textContent = 'Leonel Hidalgo'
profesor2.id = 'teacher'
profesor2.classList.add('teacher')
profesor2.innerHTML = profesor2.textContent + '<ul><li>Leonel</li><li>Hidalgo</li></ul>'

console.log(profesor2)

//! EJMEPLO 2

//document.body.appendChild(profesor)
//document.body.appendChild(profesor2)

//! EJEMPLO 3
//* Para meter esto dentro del código podemos crear tarjetas que van a estar deetinadas a contenerlos
//* y agregarlos ahí de esta forma:

const contenedorPrueba = document.getElementById('contenedorPrueba')

contenedorPrueba.appendChild(profesor)

//*Otra forma para agregarlo dentro de otra etiqueta específica

const contenedor2 = document.getElementById('contenedorPrueba2')

contenedor2.querySelector('div').appendChild(profesor2)

