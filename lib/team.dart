class Team {
  String _longName;
  String _shortName;
  String _abbr;
  Team(String longName, String shortName, String abbr) {
    this._longName = longName;
    this._shortName = shortName;
    this._abbr = abbr;
  }
  String get longName => this._longName;
  String get shortName => this._shortName;
  String get abbr => this._abbr;
}