import java.util.Scanner;

public class Test {

	public static void main(String[] args) {
		
		Scanner input = new
		Scanner(System.in);

        String name;
        
		System.out.println("input your name");
		name = input.nextLine();
		
		System.out.println("Welcome, " + name);
		
		input.close();
	}
}