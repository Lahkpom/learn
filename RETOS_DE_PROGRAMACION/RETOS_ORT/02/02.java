package RETOS_ORT.02;

public class 02 {
    public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner input = new
		Scanner(System.in);

		//Variables y Constantes
		final int CANTIDAD_NOTAS = 3;
		int trimestre1;
		int trimestre2;
		int trimestre3;
		double promedio;
		
				
		System.out.println("Ingrese nota del 1er Trimestre");
		trimestre1 = input.nextInt();

		System.out.println("Ingrese nota del 2do Trimestre");
		trimestre2 = input.nextInt();

		System.out.println("Ingrese nota del 3er Trimestre");
		trimestre3 = input.nextInt();

		promedio = (trimestre1 + trimestre2 + trimestre3) / CANTIDAD_NOTAS;

		System.out.println("El promedio de los tres Trimestres es: " + promedio);
		
		input.close();
		
	}
}
