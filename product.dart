class Product {
String _name ="";
double _cost=0.0;
static double costall =0.0;

void set_name(String n){ 
  _name=n;
}
 String get_name(){
  return _name;
}
void set_cost(double c){ 
  _cost=c;
  costall+=_cost;
}
 double get_cost(){
  return _cost;
}

}