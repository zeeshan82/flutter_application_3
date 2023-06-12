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
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //title: Text(widget.title),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.home),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        flexibleSpace: Image(
          image: AssetImage('lib/assets/images/instagram_logo.png'),
          //fit: BoxFit.cover,
          //height: 52,
          width: 52,
          alignment: Alignment.bottomLeft,
        ),
        // toolbarHeight: 32,
        backgroundColor: Colors.transparent,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 308,
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.vettimes.co.uk/app/uploads/2020/11/kitten-3266673_FTR-768x402.jpg"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Muhammad Zeeshan Khan"),
                            Text("5 mins ago"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [Icon(Icons.thumb_up), Text("Like")],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.comment),
                          Text(
                            "Comment",
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [Icon(Icons.share), Text("Share")],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





    // Text(
    //       'Demo Headline 2',
    //       style: TextStyle(fontSize: 18),
    //     ),
    //     Expanded(
    //       child: ListView.builder(
    //         shrinkWrap: true,
    //         itemBuilder: (ctx, int) {
    //           return Card(
    //             semanticContainer: true,
    //             clipBehavior: Clip.antiAliasWithSaveLayer,
    //             child: Image.network(
    //               'https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/258859988_1791499977716426_6741586317848929906_n.png?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=bkyK8_311jgAX_GkcOt&_nc_ht=scontent.fkhi22-1.fna&oh=00_AfAAGiDnxvUPb-6AzCugvQfCsIOOfyxCxMxvjg8LLCK9Qw&oe=648CA74D',
    //               fit: BoxFit.fill,
    //             ),
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10.0),
    //             ),
    //             elevation: 5,
    //             margin: EdgeInsets.all(10),
    //           );
    //         },
    //       ),
    //     ),