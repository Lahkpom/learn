document.querySelectorAll('div').forEach(e => {
    e.addEventListener('click', e => {
        alert(`Hiciste click en el div ${e.target.id}`)
        console.log(`Hiciste click en el div ${e.target.id}`)
        //e.stopPropagation()
    })
})