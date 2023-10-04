//! EJEMPLO 1

const ejemplo1 = document.getElementById('title')

console.log(ejemplo1)
console.log(ejemplo1.getAttribute('id'))
console.log(ejemplo1.getAttribute('class')) //Este devuelve null ya que no fue declarado

//! EJEMPLO 2

const ejemplo2 = document.querySelector('h2')

console.log(ejemplo2)

ejemplo2.setAttribute('id', 'metodos')
//ejemplo2.id = metodos //*Esta es otra forma

//! EJEMPLO 3

const ejemplo3 = ejemplo2

ejemplo3.classList.add('nombre1', 'nombre2', 'nombre3')
ejemplo3.classList.remove('nombre2')
ejemplo3.classList.toggle('nombre3')
ejemplo3.classList.toggle('nombre4')