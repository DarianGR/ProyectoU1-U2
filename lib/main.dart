import 'package:flutter/material.dart';
import 'package:proyecto_u1/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true, colorSchemeSeed: const Color(0xff6750a4)
      ),
      home: AppBarEx(),
      routes: {
        'pantalla1' :(context) => Pantalla1(),
        'pantalla2' :(context) => Pantalla2(),
        'pantalla3' :(context) => Pantalla3(),
        'pantalla4' :(context) => Pantalla4(),
      },
    );
  }
}

class AppBarEx extends StatelessWidget {
  const AppBarEx({super.key});
  

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.bed),
                ),
                Tab(
                  icon: Icon(Icons.add_reaction_rounded),
                ),
                Tab(
                  icon: Icon(Icons.water_drop),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next page',
                onPressed: (){
                  final route = MaterialPageRoute(builder: (context) => Pantalla4());
                  Navigator.push(context, route);
                },
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: const Color(0xff6750a4),
                  ),
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.audiotrack),
                  title: Text('Tracklist'),
                  onTap: (){
                    final route = MaterialPageRoute(builder: (context) => Pantalla1());
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Favorites'),
                  onTap: (){
                    final route = MaterialPageRoute(builder: (context) => Pantalla2());
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: (){
                    final route = MaterialPageRoute(builder: (context) => Pantalla3());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: MyStatefulWidget(),
              ),
              Center(
                child: Dialog(),
              ),
              Center(
                child: Pantalla(),
              ),
            ],
        ),
      ),
    );
  }
}

enum SingingCharacter { me, estoy, durmiendo }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.me;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Me'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.me,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Estoy'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.estoy,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Durmiendo :c'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.durmiendo,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class Pantalla extends StatefulWidget {
  const Pantalla({super.key});

  @override
  State<Pantalla> createState() => _check();
}

class _check extends State<Pantalla> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CheckboxListTile(
          title: Text("Toma"),
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        CheckboxListTile(
          title: Text("Mucha"),
          checkColor: Colors.white,
          value: isChecked2,
          onChanged: (bool? value) {
            setState(() {
              isChecked2 = value!;
            });
          },
        ),
        CheckboxListTile(
          title: Text("Awita <3"),
          checkColor: Colors.white,
          value: isChecked3,
          onChanged: (bool? value) {
            setState(() {
              isChecked3 = value!;
            });
          },
        ),
      ],
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({super.key});
  void _show(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (_) {
        return SimpleDialog(
          title: const Text('Music Genre List'),
          children: [
            SimpleDialogOption(
              child: const Text('Indie Rock'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            ),
            SimpleDialogOption(
              child: const Text('Lo-fi'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            ),
            SimpleDialogOption(
              child: const Text('New Wave'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          child: const Text('Select Music Genre'),
          onPressed: () => _show(context),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade200,
              textStyle: TextStyle(fontSize: 17),
            ),
    );
  }
}

