import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter La Movie Database',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lovie'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum movieStatus {
  downloaded('Downloaded', Colors.blue),
  watched('Watched', Colors.green),
  deleted('Deleted', Colors.orange);

  const movieStatus(this.label, this.color);
  final String label;
  final Color color;
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController colorController = TextEditingController();
  movieStatus? selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(),
                      hintText: 'search via movie title or year',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      print("search button pressed");
                    },
                    child: Icon(Icons.search_outlined),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(),
                      hintText: 'title',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(),
                      hintText: 'year',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: DropdownMenu(
                  initialSelection: movieStatus.downloaded,
                  controller: colorController,
                  requestFocusOnTap: true,
                  label: const Text('Status'),
                  onSelected: (movieStatus? color) {
                    setState(() {
                      selectedColor = color;
                    });
                    print(color);
                  },
                  dropdownMenuEntries: movieStatus.values
                      .map<DropdownMenuEntry<movieStatus>>((movieStatus color) {
                    return DropdownMenuEntry<movieStatus>(
                      value: color,
                      label: color.label,
                      enabled: color.label != 'Downloaded',
                      style: MenuItemButton.styleFrom(
                        foregroundColor: color.color,
                      ),
                    );
                  }).toList(),
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        print("add button pressed");
                      },
                      child: Icon(Icons.add)),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    for (var i = 0; i < 100; i++) Text('Item $i'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
