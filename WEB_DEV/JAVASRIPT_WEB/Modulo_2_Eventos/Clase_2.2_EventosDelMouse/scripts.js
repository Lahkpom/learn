const mensaje = e => alert(e.target.textContent)

//! CLICK
const click = document.getElementById('click')

const mensaje2 = () => alert("Este es el eventListener de click")

click.addEventListener('click', mensaje2)

//! DBLCLICK
//*Como hacer para que lea automáticamente el texto del valor del elemento y no tener que 
//*escribirlo a mano en el código:

const dblclick = document.getElementById('dblclick')

dblclick.addEventListener('dblclick', e => {
    mensaje(e)
})

//! mouseenter

const mouseenter = document.getElementById('mouseenter')

mouseenter.addEventListener('mouseenter', e => {
    mensaje(e)
})

//! mouseleave

const mouseleave = document.getElementById('mouseleave')

mouseleave.addEventListener('mouseleave', e => {
    mensaje(e)
})

//! contextmenu

const contextmenu = document.getElementById('contextmenu')

contextmenu.addEventListener('contextmenu', e => {
    mensaje(e)
    e.preventDefault()
})

//! mousedown

const mousedown = document.getElementById('mousedown')

mousedown.addEventListener('mousedown', e => {
    mensaje(e)
})

//! mouseup

const mouseup = document.getElementById('mouseup')

mouseup.addEventListener('mouseup', e => {
    mensaje(e)
})

//! mousemove

const mousemove = document.getElementById('mousemove')

mousemove.addEventListener('mousemove', e => {
    mensaje(e)
})