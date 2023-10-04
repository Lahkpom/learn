/**
 * switch(variable){
 *  case valor:
 *      accion
 *      break
 *  case valor2:
 *      accion2
 *      break
 *  default:
 *      accion3
 * }
 */

/**
 * Qué personaje de DragonBall sos?
 * 
 * Si sos fuerte y comelon sos goku
 * Si sos veloz y egoista eres vegeta
 * si sos pequeño y debil eres krilin
 * si no, eres una sabandija
 */

let personalidad = "Pequeño y débil"

switch (personalidad) {
    case "fuerte y comelón":
        console.log("sos goku")
        break
    case "veloz y egoista":
        console.log("sos vegeta")
        break
    case "Pequeño y débil":
        console.log("sos krilin")
        break
    default:
        console.log("eres una sabandija")
}