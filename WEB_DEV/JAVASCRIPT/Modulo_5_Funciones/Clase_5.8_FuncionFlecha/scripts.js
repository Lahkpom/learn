//* La función flecha nos ayuda a reducir las funciones simples a una sola línea de código
//* Se utiliza "=>"

const sumar = function(a, b){
    return a + b
}


//* Es lo mismo que:

const sumar2 = (a, b) => a + b

//! Solo declaramos la variable, le indicamos los parámetros, y con => la operación a retornar
//! JS detecta que es una función automáticamente

const saludar = (nombre) => `Hola ${nombre}`

//? En caso de ser necesario, podemos darle una estructura abriendo las llaves:

const saludar2 = (nombre) => {
    if(typeof nombre === "string"){
        console.log(`Hola ${nombre}`)
    } else {
        console.error("Ingresó un tipo de dato equivocado")
    }
}