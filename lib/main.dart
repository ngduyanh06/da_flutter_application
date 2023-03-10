import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get https => null;


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
      child: 
        Column( 
          children:[
            CachedNetworkImage(
              imageUrl: 'https://www.linkpicture.com/q/rafiki.png',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            const Text('Hi <XXX>'),
            const Text('H??m nay, b???n c?? 1 v??n X?? D??ch ??ang ch??i c??ng Duy Anh, a To??n, Hu???...., b???n mu???n ti???p t???c hay b???t ?????u v??n m???i?'),
            Row(
              children: const<Widget>[ 
                Expanded(
                child: SizedBox(
                width: 159.5,
                height: 50.0,
                child: Card(child: Text('Ti???p t???c')),
              )
                ),
              Expanded(
                child: SizedBox(
                width: 159.5,
                height: 50.0,
                child: Card(child: Text('V??n m???i')),
              )
        ),
      ],
    )
    ]
        )
          ),
          ); 
}
}
class OutlinedCardExample extends StatelessWidget {
    const OutlinedCardExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: const SizedBox(
          width: 327,
          height: 80,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}