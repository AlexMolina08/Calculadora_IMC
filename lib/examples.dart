

void main(){

  Car myCar = Car(drive: fastDrive);

  myCar.drive();


}


class Car{
  Function drive;

  Car({this.drive});

}

void slowDrive(int carNumber) => print("Conduciendo lento ... soy el coche $carNumber");
void fastDrive() => print("Conduciendo rápido !!!");