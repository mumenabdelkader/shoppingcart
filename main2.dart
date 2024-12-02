import 'dart:io';
import 'cart.dart';
void veiw_menu(){
  print('***************************************');
  print("tea         7 ");
  print("amrecano    10 ");
  print("caffelaty   12 ");
  print("mocha       13 ");
  print("cappuccino  14 ");
  print("esspresso   15 ");
  print("withmilk    20 ");
  print('if you want to add product enter 1');
  print('if you want to remove  product enter 2');
  print('if you want to veiw products enter 3');
  print('exit 4');
  print('***************************************'); 
 
}
double getpric(String name ){
  Map<String,double>prices={'tea':7,'amrecano': 10,'caffelaty':12,'mocha' :13,'cappuccino':14,'esspresso':15,'withmilk':20};

  return prices[name]!;
}

void main(){
  veiw_menu();
  Cart cart=Cart();

while(true){
  veiw_menu();
  int? num =int.parse(stdin.readLineSync()!);

  if(num==1){
  print('enter the name of your product ');
   String? name= stdin.readLineSync();
   cart.add_product(name!, getpric( name ));
   }
   else if(num==2){
    print('enter the name of your product ');
   String? name= stdin.readLineSync();
   cart.remove_product(name!);
   }
    else if(num==3){
      cart.view_cart();
      break;
    }
      else 
        break;
}
}