//DESIGNED BY THE MIST DEV

//This App was designed to test out the inter-mix of Table Elements,
// CircleAvatar and a button. Theme was set to dark mode as default,
//because i like dark mode. Cheers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Display Page for Donald Trump',
      home: const MyHomePage(title: 'Donald Trump Display Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(18.0),
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CImage(),
            const SizedBox(height: 30),
            const DetailTable(),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo)),
              child: const Text(
                'This Button Does Nothing',
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            Text(
              'Designed by <The Mist Dev>',
              style: GoogleFonts.getFont('Courier Prime',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
              // fontWeight: FontWeight.bold,

              // fontSize: 20,
              // color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class CImage extends StatelessWidget {
  const CImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              spreadRadius: 5.0,
              blurStyle: BlurStyle.inner,
            )
          ]),
      child: CircleAvatar(
          radius: 75.0,
          backgroundColor: Colors.amberAccent,
          backgroundImage: Image.asset('assets/dt.jpg').image),
    );
  }
}

class DetailTable extends StatelessWidget {
  const DetailTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      //width: 500,
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(2),
      child: Table(
        border: TableBorder.all(style: BorderStyle.solid, width: 1),
        columnWidths: const {
          0: FlexColumnWidth(3),
          1: FlexColumnWidth(5),
        },
        children: [
          TableRow(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Donald Trump',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ]),
          TableRow(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Job Title',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Former President',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ]),
          TableRow(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Country',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'USA',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ]),
          TableRow(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Famous Quote',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "If you're going to be thinking, you may as well think big.",
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
