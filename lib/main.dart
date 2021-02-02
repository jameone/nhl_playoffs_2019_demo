import 'package:flutter/material.dart';
import 'package:nhl_playoffs_2019_demo/team.dart';
import 'package:nhl_playoffs_2019_demo/match.dart';

Team tampa = new Team('Tampa Bay Lightning', 'Tampa', 'TB');
Team columbus = new Team('Columbus Blue Jackets', 'Columbus', 'CLB');
Team boston = new Team('Boston Bruins', 'Boston', 'BOS');
Team toronto = new Team('Toronto Maple Leafs', 'Toronto', 'TOR');
Team washington = new Team('Washington Capitals', 'Washington', 'WSH');
Team carolina = new Team('Carolina Hurricanes', 'Carolina', 'CAR');
Team newYork = new Team('New York Islanders', 'New York', 'NY');
Team pittsburgh = new Team('Pittsburgh Penguins', 'Pittsburgh', 'PIT');
Team nashville = new Team('Nashville Predators', 'Nashville', 'NSH');
Team dallas = new Team('Dallas Stars', 'Dallas', 'DAL');
Team winnipeg = new Team('Winnipeg Jets', 'Winnipeg', 'WPG');
Team stLouis = new Team('St. Louis Blues', 'St. Louis', 'STL');
Team calgary = new Team('Calgary Flames', 'Calgary', 'CLG');
Team colorado = new Team('Colorado Avalanche', 'Colorado', 'COL');
Team sanJose = new Team('San Jose Sharks', 'San Jose', 'SJ');
Team vegas = new Team('Las Vegas Knights', 'Las Vegas', 'LAS');
Team tbd = new Team('To Be Determined', 'Unknown', 'TBD');

var roundOne = [
  new Match(tampa, columbus, [new Game(3, 4, 'April 10'), new Game(1, 5, 'April 12'), new Game(1, 3, 'April 14'), new Game(3, 7, 'April 16')]),
  new Match(boston, toronto, [new Game(1, 4, 'April 11'), new Game(4, 1, 'April 13'), new Game(2, 3, 'April 15'), new Game(6, 4, 'April 17'), new Game(1, 2, 'April 19'), new Game(4, 2, 'April 21'), new Game(5, 1, 'April 23')]),
  new Match(washington, carolina, [new Game(4, 2, 'April 11'), new Game(4, 3, 'April 13'), new Game(0, 5, 'April 15'), new Game(1, 2, 'April 18'), new Game(6, 0, 'April 20'), new Game(2, 5, 'April 22'), new Game(3, 4, 'April 24')]),
  new Match(newYork, pittsburgh, [new Game(4, 3, 'April 10'), new Game(3, 1, 'April 12'), new Game(4, 1, 'April 14'), new Game(3, 1, 'April 16')]),
  new Match(nashville, dallas, [new Game(2, 3, 'April 10'), new Game(2, 1, 'April 13'), new Game(3, 2, 'April 15'), new Game(1, 5, 'April 17'), new Game(3, 5, 'April 20'), new Game(1, 2, 'April 22')]),
  new Match(winnipeg, stLouis, [new Game(1, 2, 'April 10'), new Game(3, 4, 'April 12'), new Game(6, 3, 'April 14'), new Game(2, 1, 'April 16'), new Game(2, 3, 'April 18'), new Game(2, 3, 'April 20')]),
  new Match(calgary, colorado, [new Game(4, 0, 'April 11'), new Game(2, 3, 'April 13'), new Game(2, 6, 'April 15'), new Game(2, 3, 'April 17'), new Game(1, 5, 'April 19')]),
  new Match(sanJose, vegas, [new Game(5, 2, 'April 10'), new Game(3, 5, 'April 12'), new Game(3, 6, 'April 14'), new Game(0, 5, 'April 16'), new Game(5, 2, 'April 18'), new Game(2, 1, 'April 21'), new Game(5, 4, 'April 23')])
];

var roundTwo = [
  new Match(boston, columbus, [new Game(3, 2, 'April 25'), new Game(2, 3, 'April 27'), new Game(1, 2, 'April 30'), new Game(4, 1, 'May 2'), new Game(4, 3, 'May 4'), new Game(3, 0, 'May 6')]),
  new Match(newYork, carolina, [new Game(0, 1, 'April 26'), new Game(1, 2, 'April 28'), new Game(2, 5, 'May 1'), new Game(2, 5, 'May 3')]),
  new Match(stLouis, dallas, [new Game(3, 2, 'April 25'), new Game(2, 4, 'April 27'), new Game(4, 3, 'April 29'), new Game(2, 4, 'May 1'), new Game(1, 2, 'May 3'), new Game(4, 1, 'May 5'), new Game(2, 1, 'May 7')]),
  new Match(sanJose, colorado, [new Game(5, 2, 'April 26'), new Game(3, 4, 'April 28'), new Game(4, 2, 'April 30'), new Game(0, 3, 'May 2'), new Game(2, 1, 'May 4'), new Game(3, 4, 'May 6'), new Game(3, 2, 'May 8')]),
];

var roundThree = [
  new Match(boston, carolina, [new Game(5, 2, 'May 9'), new Game(6, 2, 'May 12'), new Game(2, 1, 'May 14'), new Game(4, 0, 'May 16')]),
  new Match(sanJose, stLouis, [new Game(6, 3, 'May 11'), new Game(2, 4, 'May 13'), new Game(5, 4, 'May 15'), new Game(1, 2, 'May 17'), new Game(0, 5, 'May 19'), new Game(1, 5, 'May 21')]),
];

var roundFour = [
  new Match(boston, stLouis, [new Game(0, 0, 'May 27'), new Game(0, 0, 'May 29'), new Game(0, 0, 'June 1'), new Game(0, 0, 'June 3')]),
];

var rounds = [
  roundOne,
  roundTwo,
  roundThree,
  roundFour
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2019 NHL Playoffs',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Round 1'),
                Tab(text: 'Round 2'),
                Tab(text: 'Round 3'),
                Tab(text: 'Round 4'),
              ],
            ),
            title: Text('2019 NHL Playoffs'),
          ),
          body: TabBarView(
            children: [
              Matches(0),
              Matches(1),
              Matches(2),
              Matches(3),
            ],
          ),
        ),
      ),
    );
  }
}

class Matches extends StatefulWidget {
  final int _roundNum;
  Matches(this._roundNum);
  @override
  _MatchesState createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  final _winningStyle = TextStyle(fontSize: 16.0, color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.bold);
  final _losingStyle = TextStyle(fontSize: 16.0, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal);
  final _subtitleStyle = TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal);
  _MatchesState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match-up'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: _buildMatches(widget._roundNum),
    );
  }

  Widget _buildMatches(int roundNum) {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: (rounds[roundNum].length * 2) - 1,
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          // if (index >= _matches.length) {
          //   _matches.addAll(generateWordPairs().take(10)); /*4*/
          // }
          return _buildRow(rounds[roundNum][index]);
        });
  }

  Widget _buildRow(Match match) {
    var home = match.home.longName;
    var visitor = match.visitor.longName;
    var winningTeam = match.winningTeam.longName;
    var winningScore = match.winningScore;
    var losingScore = match.losingScore;
    return ListTile(
      leading: Icon(Icons.sports_hockey),
      title: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: "$visitor \t \n",
              style: visitor == winningTeam ? _winningStyle : _losingStyle,
            ),
            TextSpan(
              text: "VS. \t",
              style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 10.0),
            ),
            TextSpan(
              text: "$home\n",
              style: home == winningTeam ? _winningStyle : _losingStyle,
            ),
          ],
        ),
      ),
      subtitle: Text(
        winningScore > 3 ? '$winningTeam won $winningScore - $losingScore' : 'Puck drops ${match.games[0].date}',
        style: _subtitleStyle,
        textAlign: TextAlign.left,
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.chevron_right,
          color: Colors.grey,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MatchDetail(match)),
          );
        },
      ),
    );
  }

}

class MatchDetail extends StatefulWidget {
  final Match _selectedMatch;
  MatchDetail(this._selectedMatch);
  @override
  _MatchDetailState createState() => _MatchDetailState();
}

class _MatchDetailState extends State<MatchDetail> {

  bool roadGame(int index) {
    if (index == 2 || index == 3 || index == 5) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Match match = widget._selectedMatch;
    String winnerShort = match.winningTeam.shortName;
    List<Game> games = match.games;
    int seriesLength = games.length;
    return Scaffold(
      appBar: AppBar(
        title: Text("$winnerShort wins in $seriesLength"),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Game',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Home',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Away',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Final',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: games.map((e) => DataRow(cells: <DataCell>[
          DataCell(Text('${games.indexOf(e) + 1}')),
          DataCell(Text(this.roadGame(games.indexOf(e)) ? '${match.visitor.abbr}' : '${match.home.abbr}' )),
          DataCell(Text(this.roadGame(games.indexOf(e)) ? '${match.home.abbr}' : '${match.visitor.abbr}')),
          DataCell(Text(this.roadGame(games.indexOf(e)) ? '${e.visitorScore} - ${e.homeScore}' : '${e.homeScore} - ${e.visitorScore}'))
        ])).toList()
        // rows: const <DataRow>[
        //   // DataRow(
        //   //   cells: <DataCell>[
        //   //     DataCell(Text('Sarah')),
        //   //     DataCell(Text('19')),
        //   //     DataCell(Text('Student')),
        //   //   ],
        //   // ),
        //   // DataRow(
        //   //   cells: <DataCell>[
        //   //     DataCell(Text('Janine')),
        //   //     DataCell(Text('43')),
        //   //     DataCell(Text('Professor')),
        //   //   ],
        //   // ),
        //   // DataRow(
        //   //   cells: <DataCell>[
        //   //     DataCell(Text('William')),
        //   //     DataCell(Text('27')),
        //   //     DataCell(Text('Associate Professor')),
        //   //   ],
        //   // ),
        // ],
      )
    );
  }
}

