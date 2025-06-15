import 'ride.dart';

//class for rider
class Rider {
  //id counter for rider
  static int _idCounter = 1;
  //id for every rider
  late String id;
  //wallet field
  double _wallet;
  //ride history list
  List<String> rideHistory = []; 

  //constructor for rider
  Rider(this._wallet) {
    //access id and increments
    id = "RIDER${_idCounter++}";
  }

  //method to get the wallet and id of riders
  Rider.withId(this._wallet, this.id);

  //function for book riding
  bool bookRide(Ride ride) {
    //condition if wallet is enough
    if (_wallet < ride.fare) {
      //if its not prints error message
      print("❌ $id does not have enough money for $ride");
      return false;
    }
    //checks if ride is booked already
    if (ride.isBooked) {
      //prints booked already
      print("$ride is already booked by another rider");
      return false;
    }
    //if the wallet is enough
    //fare will be deducted to the wallet
    _wallet -= ride.fare;
    //ride will be booked
    ride.isBooked = true;
    //ride will be added to history
    rideHistory.add("Booked $ride");
    //prints that ride is booked
    print("✅ $id booked $ride for ₱${ride.fare}");
    return true;
  }
}

//extending the rider class to the vip rider
class VIPRider extends Rider {
  //counter for vip
  static int _vipIdCounter = 1;

  //assigns vip id
  //access parent wallet in class rider
  VIPRider(double _wallet) : super(_wallet) {
    //increments vip counter
    id = "VIP${_vipIdCounter++}";
  }

  @override
  //function for book riding
  bool bookRide(Ride ride) {
    //discount is implemented
    double discountedFare = ride.fare * 0.85;

    //if there is enough money then discount will be implemented
    if (_wallet < discountedFare) {
      //if there's not enough
      print("❌ $id does not have enough money for $ride");
      return false;
    }
    //if the ride is already booked
    if (ride.isBooked) {
      print("$ride is already booked by another rider");
      return false;
    }

    //if there's enough money
    //deduct from wallet
    _wallet -= discountedFare;
    //ride is booked
    ride.isBooked = true;
    //add to history
    rideHistory.add("Booked $ride"); 
    //print that ride is booked
    print("✅ $id booked $ride for ₱$discountedFare (discount applied)");
    return true;
  }
}
