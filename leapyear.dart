import 'dart:io';

bool isLeapYear(int year){
	if(year % 4 != 0){
		return false;
	}
	
	if(year % 100 != 0){
		return true;
	}
	if(year % 400 == 0){
		return true;
	}
	
	return false;
}	

//Task2: Определить год високосный или нет
//
//Пример 
//
//var n = 2000;
//
//вывод: Год високосный 
//
//    Если год делится на 4 без остатка, перейдите на шаг 2. ... 
//    Если год делится на 100 без остатка, перейдите на шаг 3. ... 
//    Если год делится на 400 без остатка, перейдите на шаг 4. ... 
//    Год високосный (366 дней). 
//    Год не високосный год (365 дней). 

 void tests(){
 assert(isLeapYear(2000)==true);
 assert(isLeapYear(1900)==false);
 assert(isLeapYear(2020)==true);
 assert(isLeapYear(2021)==false);
 assert(isLeapYear(2022)==false);
 assert(isLeapYear(2023)==false);
 assert(isLeapYear(2024)==true);
}
void main() {
   //tests
   print("Enter the year: ");
   var year = int.parse(stdin.readLineSync()!);
   if(isLeapYear(year)){
   	print("Year is leap");
   }else{
   	print("Year is not leap");
   }
}
