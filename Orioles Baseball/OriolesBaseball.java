import java.util.Scanner;

public class OriolesBaseball {

	public static void main(String[] args) {
		final String INITIAL = 
				"Type 1 to enter a number or 2 to enter a name: ";
		final String ENTER_1 =
				"Enter player number: ";
		final String ENTER_2 =
				"Choose a name: ";		
		Scanner keyboardScanner = new Scanner(System.in);

		System.out.println(INITIAL);
		int initial_num = keyboardScanner.nextInt();

		if (initial_num==1) {
			System.out.println(ENTER_1);
			int playerNumber = keyboardScanner.nextInt();
			if(playerNumber == 19 ||playerNumber == 11 
					||playerNumber == 17 ||playerNumber == 16) {

				System.out.println("Which player wears number " +
						playerNumber + " on his jersey? ");
				String name = keyboardScanner.next();

				if( playerNumber == 19 && name.equals("Davis")
						|| playerNumber == 17 && name.equals("Cobb")) {

					System.out.println("Correct!");
				}else if (playerNumber == 11 && name.equals("Iglesias") 
						|| playerNumber == 16 && name.equals("Mancini")) {

					System.out.println("Correct!");
				}else {

					System.out.println("Incorrect!");
				}	
			}else {

				System.out.println("Invalid choice.");
			}
		}

		else{
			System.out.println(ENTER_2);
			String  playerName = keyboardScanner.next();
			if(playerName.equals("Davis") || playerName.equals("Cobb") 
					|| playerName.equals("Mancini") || playerName.equals("Iglesias")) {

				System.out.println("What number does " + playerName + " wear? ");
				int playerNum = keyboardScanner.nextInt();

				if( playerName.equals("Davis") && playerNum == 19 
						|| playerName.equals("Cobb") && playerNum == 17) {

					System.out.println("Correct!");
				}else if( playerName.equals("Iglesias") && playerNum == 11 
						|| playerName.equals("Mancini") && playerNum == 16) {

					System.out.println("Correct!");	
				}else {

					System.out.println("Incorrect!");	
				}
			}else {

				System.out.println("Invalid choice.");
			}
		}
		keyboardScanner.close();
	}
}
