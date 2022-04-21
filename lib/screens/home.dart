import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/bar.dart';
import 'package:bmi_calculator/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weigthController = TextEditingController();

  double _bmiDoubleResult = 0;
  String _bmiTextResult = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            appName,
            style: TextStyle(color: accentColor, fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.black12,
          elevation: 0,
          centerTitle: true),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFieldContainer(
                    hintText: "Height", textController: _heightController),
                TextFieldContainer(
                    hintText: "Weigth", textController: _weigthController),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: 120,
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(accentColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  double _h = double.parse((_heightController.text).isEmpty
                      ? "0"
                      : _heightController.text);
                  double _w = double.parse((_weigthController.text).isEmpty
                      ? "0"
                      : _weigthController.text);
                  setState(() {
                    List bmiInfo = getBMI(_w, _h);
                    _bmiDoubleResult = bmiInfo[0];
                    _bmiTextResult = bmiInfo[1];
                  });
                },
                child: const Text('Calculate',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ),
            const SizedBox(height: 50),
            Text(_bmiDoubleResult.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 90,
                  color: accentColor,
                )),
            const SizedBox(height: 30),
            Visibility(
              child: Text(_bmiTextResult,
                  style: const TextStyle(
                      fontSize: 32,
                      color: accentColor,
                      fontWeight: FontWeight.w400)),
            ),
            const SizedBox(height: 70),
            const Bar(
                barWidth: 60,
                barHeight: 20,
                mainAxisAlignment: MainAxisAlignment.end,
                borderRadiusGeometry: borderRadiusGeometryLeft),
            const SizedBox(height: 10),
            const Bar(
                barWidth: 90,
                barHeight: 20,
                mainAxisAlignment: MainAxisAlignment.end,
                borderRadiusGeometry: borderRadiusGeometryLeft),
            const SizedBox(height: 10),
            const Bar(
                barWidth: 60,
                barHeight: 20,
                mainAxisAlignment: MainAxisAlignment.end,
                borderRadiusGeometry: borderRadiusGeometryLeft),
            const SizedBox(height: 30),
            const Bar(
                barWidth: 60,
                barHeight: 20,
                mainAxisAlignment: MainAxisAlignment.start,
                borderRadiusGeometry: borderRadiusGeometryRight),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            const Bar(
                barWidth: 60,
                barHeight: 20,
                mainAxisAlignment: MainAxisAlignment.start,
                borderRadiusGeometry: borderRadiusGeometryRight),
          ],
        ),
      ),
    );
  }
}
