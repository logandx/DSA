class City {
  String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  late Map<City, int> _routes;

  Map<City, int> get routes => _routes;

  set routes(Map<City, int> value) {
    _routes = value;
  }

  City(
    this._name,
  ) {
    _routes = {};
  }

  void addRoute(City city, int price) {
    routes[city] = price;
  }
}

class WeightedGraph {
  Map<String, City> cities = {};

  void addCity(String cityName) {
    cities[cityName] = City(cityName);
  }

  void addRoute(String city1Name, String city2Name, int price) {
    if (!cities.containsKey(city1Name)) {
      addCity(city1Name);
    }
    if (!cities.containsKey(city2Name)) {
      addCity(city2Name);
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

    City city1 = cities[city1Name]!;
    City city2 = cities[city2Name]!;

    city1.addRoute(city2, price);
    city2.addRoute(city1, price); // Assuming routes are bidirectional
  }
}

void main() {
  WeightedGraph weightedGraph = WeightedGraph();
  weightedGraph.addRoute("CityA", "CityB", 10);
  weightedGraph.addRoute("CityB", "CityC", 20);
  // Add more routes as needed...

  // Example of accessing routes
  print(weightedGraph.cities["CityA"]!.routes);
  print(weightedGraph.cities["CityB"]!.routes);
}
