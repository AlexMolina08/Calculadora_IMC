enum CarType{
  turismo,
  furgoneta,
  motocicleta,
  SUV
}

void main(){

  Car myCar = Car(carStyle: CarType.furgoneta);
  print(myCar.carStyle.toString());

}

class Car{
  CarType carStyle;

  Car({this.carStyle});
}