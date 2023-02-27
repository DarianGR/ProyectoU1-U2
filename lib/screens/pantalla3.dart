import 'package:flutter/material.dart';
import 'package:proyecto_u1/screens/screens.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: 
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text('C O N T E N T', style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorites'),
                trailing: Icon(Icons.navigate_next, size: 50),
              ),
              const ListTile(
                title: Text('P R E F E R E N C E S', style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
                trailing: SwitchExample(),
              ),
              const ListTile(
                leading: Icon(Icons.wifi_tethering),
                title: Text('Only Download via Wi-Fi'),
                trailing: SwitchExample(),
              ),
              const ListTile(
                leading: Icon(Icons.filter_none_sharp),
                title: Text('Play in Background'),
                trailing: SwitchExample(),
              ),
              const ListTile(
                title: Text('P L A Y B A C K', style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Icon(Icons.music_off),
                title: Text('Offline Mode'),
                trailing: SwitchExample(),
              ),
              const ListTile(
                leading: Icon(Icons.timelapse),
                title: Text('Crossfade'),
              ),
              const ListTile(
                title: SliderExample(),
              ),
              const ListTile(
                title: SizedBox(width: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch(
          thumbIcon: thumbIcon,
          value: light1,
          onChanged: (bool value) {
            setState(() {
              light1 = value;
            });
          },
        ),
      ],
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 100,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
    );
  }
}
