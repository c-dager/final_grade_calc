import 'package:final_grade_calc/letter_grade_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Center(child: MyHomePage(title: 'Letter Grade Calculator')),
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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter numeric grade below:'
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: MyCustomForm(),
            ),
          ],
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  String displayText = "No grade entered";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300.0,
          child: TextField(
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            maxLength: null,
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+(\.\d*)?'))],
            controller: myController,
            maxLines: null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(onPressed: (){
            final calc = new LetterGradeCalculator();
            LetterGrade letterGrade = calc.getLetterGrade(double.parse(myController.text));
            var letterGradeStringValue = letterGrade.toString();
            setState(() {
              displayText = letterGradeStringValue;
            });
          }, child: const Text("Get Letter Grade")),
        ),
        Text(displayText,style: const TextStyle(fontSize: 20),)
      ],
    );
  }
}