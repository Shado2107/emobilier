import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int _slideIndex = 0;

final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

final List<String> images = [

];

List<Color> colors = [Colors.orange];

final List<String> text0= [
    "Welcome in your app",
    "Enjoy teaching...",
    "Showcase your skills",
    "Friendship is great"
];

final List<String> text1 = [
    "App for food lovers, satisfy your taste",
    "Find best meals in your area, simply",
    "Have fun while eating your relatives and more",
    "Meet new friends from all over the world"
  ];


final IndexController controller = IndexController();
  @override
  Widget build(BuildContext context) {
    TransformerPageView transformerPageView = TransformerPageView(
        pageSnapping: true,
        onPageChanged: (index){
          setState(() {
           this._slideIndex =index; 
          });

          switch(index){
            case 2:
               {
                  print('Last slide: $index');
               }
          }
        },
        loop: false,
        controller: controller,
        transformer: new PageTransformerBuilder(
          builder:(Widget child, TransformInfo info){
        return new Material(
          color: Colors.white,
          elevation: 8.0,
          textStyle: new TextStyle(
           color: Colors.white),
            borderRadius: new BorderRadius.circular(12.0),
            child: new Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new ParallaxContainer(
                      child: new Text(
                        text0[info.index],
                        style: new TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 34.0,
                          fontFamily: '',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      position: info.position,
                      opacityFactor: .8,
                    translationFactor: 400.0,
                    ),
                    SizedBox(
                      height: 45.0,
                    ),
                    new ParallaxContainer(
                      child: new Image.asset(
                        images[info.index],
                        fit: BoxFit.contain,
                        height: 350,
                      ),
                      position: info.position,
                      translationFactor: 400.0,
                    ),
                    SizedBox(
                      height: 45.0,
                    ),
                    new ParallaxContainer(
                      child: new Text(
                        text1[info.index],
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 28.0,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold),
                      ),
                      position: info.position,
                      translationFactor: 300.0,
                    ),
                    SizedBox(
                      height: 55.0,
                    ),
                    
                  ],
                )
              ),
            ),
        );
          }
        ),
   itemCount: 4  );

    return Scaffold(
      backgroundColor: Colors.white,
      body: transformerPageView,
    );
  }
}

