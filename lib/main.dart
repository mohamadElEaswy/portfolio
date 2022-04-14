import 'package:flutter/material.dart';
import 'src/core/routs/routs_list.dart';
import 'src/ui/theme/theme.dart';

//TODO add copyright section everywhere
// import { initializeApp } from "firebase/app";
// import { getAnalytics } from "firebase/analytics";
// const firebaseConfig = {
//   apiKey: "AIzaSyB2lizzLRMICa59kxsdRk12kcw88cO_Da8",
//   authDomain: "portofolio0101.firebaseapp.com",
//   projectId: "portofolio0101",
//   storageBucket: "portofolio0101.appspot.com",
//   messagingSenderId: "194076309827",
//   appId: "1:194076309827:web:29526a9f813e41ce41d7f6",
//   measurementId: "G-FS6BEM8Q78"
// };
// const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        darkTheme: MyAppTheme.darkThemeData,
        themeMode: currentMode,
        theme: MyAppTheme.lightThemeData,
        routes: routs,
        initialRoute: NamedRouts.home,
        // home: const HomePage(),
      ),
    );
  }
}

// title: 'this is only test Mohamed Easwy portfolio will be here'
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Text(widget.title),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         tooltip: 'Increment',
//         child: const Icon(Icons.question_mark_rounded),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
