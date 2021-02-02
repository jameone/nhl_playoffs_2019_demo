import 'team.dart';

class Game {
  int _homeScore;
  int _visitorScore;
  String _date;
  Game(int homeScore, int visitorScore, String date) {
    this._homeScore = homeScore;
    this._visitorScore = visitorScore;
    this._date = date;
  }

  int get homeScore => this._homeScore;
  int get visitorScore => this._visitorScore;
  int get winningScore => this._homeScore >= this._visitorScore ? this._homeScore : this._visitorScore;
  int get losingScore => this._homeScore <= this._visitorScore ? this._homeScore : this._visitorScore;
  String get date => this._date;
}

class Match {
  Team _home;
  Team _visitor;
  List<Game> _games;
  // int _homeScore;
  // int _visitorScore;

  Match(Team home, Team visitor, List<Game> games) {
    this._home = home;
    this._visitor = visitor;
    this._games = games;
    // this._homeScore = homeScore;
    // this._visitorScore = visitorScore;
  }

  Team get home => this._home;
  Team get visitor => this._visitor;
  int get homeScore => this._games.where((element) => element.homeScore > element.visitorScore).length;
  int get visitorScore => this._games.where((element) => element.visitorScore > element.homeScore).length;

  Team get winningTeam => this.homeScore >= this.visitorScore ? this.home : this.visitor;
  Team get losingTeam => this.homeScore <= this.visitorScore ? this._home : this._visitor;
  int get winningScore => this.homeScore >= this.visitorScore ? this.homeScore : this.visitorScore;
  int get losingScore => this.homeScore <= this.visitorScore ? this.homeScore : this.visitorScore;

  List<Game> get games => this._games;
}