package main

import "fmt"

func main() {
	const CANTIDAD_NOTAS = 3
	var (
		trimestre1 uint8
		trimestre2 uint8
		trimestre3 uint8
	)

	trimestre1 = 6
	trimestre2 = 7
	trimestre3 = 7

	promedio := ((float32(trimestre1) + float32(trimestre2) + float32(trimestre3)) / float32(CANTIDAD_NOTAS))

	fmt.Println("El promedio es: ", promedio)
}
