//class for ride
class Ride {
  //id counter set to 1
  static int _idCounter = 1;
  //fare in decimal
  double fare;
  //id for every ride
  late String id;
  //book is set to not yet booked
  bool isBooked = false;

  //constructor for ride
  Ride(this.fare) {
    //id counter for ride will increment once run
    id = "RIDE${_idCounter++}";
  }

  @override
  //override turns id to strings
  String toString() => id;
}
