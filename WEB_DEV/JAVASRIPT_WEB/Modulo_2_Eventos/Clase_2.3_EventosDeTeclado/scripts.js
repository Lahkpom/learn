const mensaje = e => alert(e.target.textContent)

//! keydown
const keydown = document.getElementById('keydown')

keydown.addEventListener('keydown', e => {
    mensaje(e)
})

//! keyup

const keyup = document.getElementById('keyup')

keyup.addEventListener('keyup', e => {
    mensaje(e)
})

//! keypress

const keypress = document.getElementById('keypress')

keypress.addEventListener('keypress', e => {
    mensaje(e)
})