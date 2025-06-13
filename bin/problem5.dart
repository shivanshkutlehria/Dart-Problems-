class Sports {
  String getName() {
    return "Generic Sports";
  }

  void getNumberOfTeamMembers() {
    print("Each team has n players in ${getName()}");
  }
}

class Soccer extends Sports {
  @override
  String getName() {
    return 'Soccer class';
  }

  @override
  void getNumberOfTeamMembers() {
    print('Each team has 11 players in Soccer');
  }
}

void main() {
  Sports sport = Sports();
  print(sport.getName());
  sport.getNumberOfTeamMembers();
  Soccer soccer = Soccer();
  print(soccer.getName());
  soccer.getNumberOfTeamMembers();
}
