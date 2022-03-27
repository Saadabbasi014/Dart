//@dart = 2.9

import 'dart:io';
import 'dart:math';

void main(){
 
	Random rand = new Random();
	
	int randomNumber = rand.nextInt(100);
	// print(randomNumber);
	
	int attempt = 0;
	int number;

	while(number != randomNumber){
		attempt += 1;
		print("Please enter a number between 0ne to hundred");
		
		 number = int.parse(stdin.readLineSync());
		
		
		if(number == randomNumber)	{
		
	}
	else if(number > randomNumber){
	print("you are higher");
	}
	else
	print("you are lower");
	
	
}
print(attempt);
}
/*

import 'dart:io';
import 'dart:math';

void main(){
 
	Random random = new Random();
	
	int randomNumber = random.nextInt(100);
	
	int attempt = 0;
	print("Please enter a number between 0ne to Hundred");
	int number = int.parse(stdin.readLineSync());
		
	// print(number);	
	// print(randomNumber);
		
	// if(number > randomNumber){
		// print("Yor are higher");
		// continue;
	// }
	// else if(number < randomNumber){
		// print("Yor are lower");
		// continue;
	// }
	// else 
		// print("Yor are perfect");
		// break;
	// }
	
	switch(
}
*/