import 'package:flutter/material.dart';

class CityPage extends StatefulWidget {
  final VoidCallback onSave;

  CityPage({required this.onSave});
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  TextEditingController cityController = TextEditingController();

  void setCity(String cityName) {
    setState(() {
      cityController.text = cityName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('city'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: 'Where are you living?',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setCity('Mumbai'),
                  child: Text('Mumbai'),
                ),
                ElevatedButton(
                  onPressed: () => setCity('Goa'),
                  child: Text('Goa'),
                ),
                ElevatedButton(
                  onPressed: () => setCity('Bangalore'),
                  child: Text('Bangalore'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setCity('Hyderabad'),
                  child: Text('Hyderabad'),
                ),
                ElevatedButton(
                  onPressed: () => setCity('Delhi'),
                  child: Text('Delhi'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  //  SelectProffesionOptionPage.onbuttonClick =   false;
                  //  selectedOption = 'Working';
                  // isStudyingSelected = !isStudyingSelected;
                  //isWorkingSelected = true;
                  // isStudyingSelected = false;
                  // selectedProfessionButton = 'Experienced';
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 20),
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // primary: selectedProfessionButton == 'Experienced'
                //     ? Colors.blue
                //     : Colors.white,
              ),
              child: Text(
                'Save',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
