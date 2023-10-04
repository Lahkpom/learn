//! EJEMPLO 1

//const ejemplo1 = Array.from(document.querySelectorAll('li'))

//ejemplo1.map(i => {
//    if(i.textContent.trim().toUpperCase() === 'COLADO'){
//        i.remove()
//    }
//})

//! EJEMPLO 2

const ejemplo2 = document.querySelectorAll('li')

for(let i of ejemplo2){
    if(i.textContent.trim().toUpperCase() === 'COLADO'){
        i.remove()
    }
}

//! EL MÉTODO TRIM() SIRVE PARA REMOVER LOS ESPACIOS EN BLANCO, TAMBIÉN ESTAN  trimEnd() y trimStart()