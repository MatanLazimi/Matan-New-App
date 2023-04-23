// Define route name by using the screen class name.

enum RoutesNames {
  HomeScreen,
  BrokerDetailsScreen,
}

extension RoutesNamesEx on RoutesNames {
  String get name => this.toString().split('.').last;
}
