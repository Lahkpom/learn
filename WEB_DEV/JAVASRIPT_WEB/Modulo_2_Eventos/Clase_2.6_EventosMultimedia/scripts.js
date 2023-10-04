const video = document.getElementById('video')
const botonPlay = document.getElementById('play')
const botonPausa = document.getElementById('pause')

botonPlay.addEventListener('click', () => {
    video.play()
})

botonPausa.addEventListener('click', () => {
    video.pause()
})