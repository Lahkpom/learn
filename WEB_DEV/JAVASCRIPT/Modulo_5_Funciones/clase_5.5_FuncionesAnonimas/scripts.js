let sumar = function(nro1, nro2){
    return nro1 + nro2
}

console.log(sumar(2, 4))

//* Declarar la función al mismo timepo que se ejecuta

(function(nro1, nro2){
    console.log(nro1 + nro2)
}(5, 6))