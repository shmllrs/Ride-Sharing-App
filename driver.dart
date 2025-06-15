import 'ride.dart';

//class for driver
class Driver {
  //string for the completed rides
  List<Ride> completedRides = [];
  //id counter for driver
  static int _idCounter = 1;
  //auto-generated id (DRIVER1)
  //used late as later putting value reference: https://www.educative.io/answers/what-is-the-late-keyword-in-dart
  late String id;
  

  //constructor for the driver
  Driver() {
    //accessing id for how many driver
    id = "DRIVER${_idCounter++}";
  }

  //function for accepting rides
  void acceptRide(Ride ride) {
    //if the ride is not booked then prints error message
    if (!ride.isBooked) {
      print("$ride has not been booked");
    } 
    else {
      //if the ride is book then it add the ride to the completed rides list
      //prints that ride has been accepted
      completedRides.add(ride);
      print("$id accepted $ride");
    }
  }
}
