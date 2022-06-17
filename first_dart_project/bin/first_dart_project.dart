final planetNames = [
  "Mercury",
  "Venus",
  "Earth",
  "Mars",
  "Jupiter",
  "Saturn",
  "Uranus",
  "Neptune"
];

final planetAndNoOfSatelites = {
  "Mercury": 0,
  "Venus": 0,
  "Earth": 1,
  "Mars": 2,
  "Jupiter": 79,
  "Saturn": 82,
  "Uranus": 27,
  "Neptune": 14
};

void main(List<String> arguments) {
  SolarSystem _solarSystem = SolarSystem(
      numberOfPlanets: 8,
      starName: "Sun",
      plantNames: planetNames,
      planetAndNoOfSatelites: planetAndNoOfSatelites);
  print(_solarSystem.planetOfMostSatelites());

  print(_solarSystem._noOfPlanets);
  print(_solarSystem._starName);

  _solarSystem._numberOfYears = "2 billion";
  print(_solarSystem.yearsOld);
}

class SolarSystem {
  final int? numberOfPlanets;
  final String? starName;
  final List<String>? plantNames;
  final Map<String, int>? planetAndNoOfSatelites;
  var yearsOld = "5 billion years";

  SolarSystem(
      {this.numberOfPlanets,
      this.starName,
      this.plantNames,
      this.planetAndNoOfSatelites});

  planetOfMostSatelites() {
    var mostSatelites = 0;
    var planetAndSatelites = {};
    planetAndNoOfSatelites!.forEach((key, value) {
      if (value > mostSatelites) {
        mostSatelites = value;
        planetAndSatelites = {key: value};
      }
    });
    return planetAndSatelites;
  }

  int get _noOfPlanets =>numberOfPlanets!;
  String get _starName => starName!;
  String get _getNumberOfYears => yearsOld;
  set _numberOfYears (String _yearsOld) => yearsOld = _yearsOld;
}
