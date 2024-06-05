import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Sadik"),
          backgroundColor: Colors.cyan,
        ),

        body: ModelBottomSheet(),
      ),
    );
  }
}

class ModelBottomSheet extends StatefulWidget {
  const ModelBottomSheet({Key? key}) : super(key: key);

  @override
  State<ModelBottomSheet> createState() => _ModelBottomSheetState();
}

class _ModelBottomSheetState extends State<ModelBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Show Modal Bottom Sheet"),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.yellow,
            barrierColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            builder: (BuildContext context) {
              return Container(
                height: 200, // Set height as required
                child:  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Sadik"),
                    ],
                  ),

                ),
              );
            },
          );
        },
      ),
    );
  }
}
