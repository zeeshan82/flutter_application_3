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
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        flexibleSpace: const Image(
          image: AssetImage('lib/assets/images/instagram_logo.png'),
          width: 52,
          alignment: Alignment.bottomLeft,
        ),
        // toolbarHeight: 32,
        backgroundColor: Colors.transparent,
      ),
      
      body: Column(
        children: [
       
          SizedBox(
            height: 200,
            width: screenWidth,
            child: ListView.builder(
            shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) => 
          const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://majuonline.edu.pk/Images/maju_logo.png"),
              radius: 40,
            ), //CircleAvatar              
                  
                ),
          ),
//           Expanded(
//           child: ListView.builder(
//           shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemCount: 12,
//               itemBuilder: (BuildContext context, int index) => 
// const CircleAvatar(
//             backgroundImage: NetworkImage(
//                 "https://majuonline.edu.pk/Images/maju_logo.png"),
//             radius: 50,
//           ), //CircleAvatar              
        
//       )),

          const Row(
            children: 
                        [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.vettimes.co.uk/app/uploads/2020/11/kitten-3266673_FTR-768x402.jpg"),
                radius: 20,
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Muhammad Zeeshan Khan"),
                    Text("5 mins ago"),
                  ],
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Icon(Icons.more_vert),
            ],
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(
              "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [Icon(Icons.thumb_up), Text("Like")],
              ),
              Row(
                children: [
                  Icon(Icons.comment),
                  Text(
                    "Comment",
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              Row(
                children: [Icon(Icons.share), Text("Share")],
              )
            ],
          ),
        ],
      ),
    );
  }
}