import 'driver.dart';
import 'ride.dart';
import 'rider.dart';

void main() {
  List<Rider> riders = [Rider(250), Rider(100), VIPRider(300), VIPRider(200)];

  List<Driver> drivers = [Driver(), Driver(), Driver()];

  List<Ride> rides = [
    Ride(200),
    Ride(150),
    Ride(200),
    Ride(120),
    Ride(180),
    Ride(250),
    Ride(130)
  ];

  print("\n|| DAY 1 TRANSACTIONS ||\n");
  if (riders[0].bookRide(rides[0])) drivers[0].acceptRide(rides[0]);
  if (riders[1].bookRide(rides[1])) drivers[1].acceptRide(rides[1]);
  if (riders[2].bookRide(rides[2])) drivers[0].acceptRide(rides[2]);
  if (riders[3].bookRide(rides[3])) drivers[2].acceptRide(rides[3]);

  print("\n|| DAY 2 TRANSACTIONS ||\n");
  if (riders[1].bookRide(rides[5])) drivers[1].acceptRide(rides[5]);
  if (riders[2].bookRide(rides[2])) drivers[0].acceptRide(rides[2]);
  if (riders[3].bookRide(rides[6])) drivers[2].acceptRide(rides[6]);

  print("\n|| ALL RIDER TRANSACTIONS ||\n");
  for (var rider in riders) {
    print("${rider.id} Transactions: ${rider.rideHistory.join(', ')}");
  }

  print("\n|| ALL DRIVER COMPLETED RIDES ||\n");
  for (var driver in drivers) {
    print("${driver.id} Completed Rides: ${driver.completedRides.join(', ')}");
  }
}
