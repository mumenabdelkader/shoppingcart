import 'product.dart';

class Cart {
 
    List <Product> products=[];
 
bool add_product(String proname,double procost){
   Product prod =Product();
   bool chick =true;
   if (proname.isNotEmpty){
      prod.set_name(proname);
      }
      else {print("this name is not valid ");
      chick=false;}
   if (procost>0) {
     prod.set_cost(procost);
   } else {
      print("this cost is not valid ");
      chick=false;
      }
      if(chick) {
        products.add(prod);
      }

     return chick;
}
bool remove_product(String proname){
  bool chick=false;
     for(int i=0;i<products.length;i++){
            if(products[i].get_name()==proname){
              products.removeAt(i);
              chick=true;
            } 
     }
     return chick;
}



void view_cart(){
 for(int i=0;i<products.length;i++){
           print('produt name : '+products[i].get_name()+'       cost : '+products[i].get_cost().toString());
         
  }
  print('____________________________');
  print("all cost : "+Product.costall.toString());

}


}