package main

import "fmt"

func main() {
	//Las variables se declaran con la palabra reservada var
	//seguido del nombre de la variable, y a continuación el tipo
	var apple string
	//en este caso un string, siempre va entre comillas dobles
	apple = "manzana"
	fmt.Println(apple)

	//podemos agrupar las variables en un solo var
	/*
		var banana string = "banana"
		var orange string = "naranja"
		var pineapple string = "ananá"
	*/

	var (
		banana    string = "banana"
		orange    string = "naranja"
		pineapple string = "ananá"
	)

	fmt.Println(apple, banana, orange, pineapple)

	//*También podemos saltearnos la palabra bar
	//*y el tipo de dato, aplicando el := operador de asignación de variable corta
	//*que infiere el tipo de dato de acuerdo al valor asignado
	//*una vez inicializada la variable ya no puede cambiar su tipo de dato

	watermelon := "sandía"
	fmt.Println(watermelon)

	//watermelon = 1
	watermelon = "asd"
	fmt.Println(watermelon)
}
