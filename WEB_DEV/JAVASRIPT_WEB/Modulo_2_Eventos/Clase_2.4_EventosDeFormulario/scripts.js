const mensaje = e => alert(e.target.textContent)

//! submit

const submit = document.getElementById('submit')

submit.addEventListener('submit', () => {
    alert('Usted ha enviado el formulario')
})


//! change

const recordarContraseña = document.getElementById('recordarContraseña')

recordarContraseña.addEventListener('change', e => {
    if(e.target.checked){
        alert('Se recordará la contraseña')
    }else{
        alert('No se recordará la contraseña')
    }
})

//! reset

const recordarContraseña2 = document.getElementById('recordarContraseña2')

recordarContraseña2.addEventListener('change', e => {
    if(e.target.checked){
        alert('Se recordará la contraseña')
    }else{
        alert('No se recordará la contraseña')
    }
})