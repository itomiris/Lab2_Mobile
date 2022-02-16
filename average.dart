import 'dart:io';

num avg3(num a, num b, num c){
	if(a>=b){
		if(c>=a){
			return a;
		}else{
			if(c>=b){
				return c;
			}else{
				return b;
			}
		}
	}else{
		//a<b
		if(c>=b){
			return b;
		}else{
			//c<b
			if(c>=a){
				return c;
			}else{
				return a;
			}
		}
	}
}

//
// Task1: Выбрать любые три числа, вывести на экран среднее из них.
// Т.е. не самое большое и не самое маленькое.
// Если все числа равны, вывести любое из них
//
/* void tests(){
 	var a = 10;
 	var b = 20;
 	var c = 30;
 	
 	assert(avg3(a,b,c)==b);
 	assert(avg3(a,c,b)==b);
 	assert(avg3(a,c,b)==b);
 	assert(avg3(b,a,c)==b);
 	assert(avg3(b,c,a)==b);
 	assert(avg3(c,a,b)==b);
 	assert(avg3(c,b,a)==b);
 }*/
 
void main() {
   //tests();	
   print("a = ");
   var a = num.parse(stdin.readLineSync()!);
   print("b = ");
   var b = num.parse(stdin.readLineSync()!);
   print("c = ");
   var c = num.parse(stdin.readLineSync()!);
   var n =  avg3(a,b,c);
   print('Average from ${a}, ${b}, ${c} is ${n}');
}
