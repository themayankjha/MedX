import 'package:flutter/material.dart';
//import './details_screen.dart';
import './main_drawer.dart';
import './symptoms_screen.dart';
import 'package:requests/requests.dart';

String stringtwo='JHJ';

 final username = TextEditingController();
  final age = TextEditingController();
  final height = TextEditingController();
  final weight = TextEditingController();
  final gender = TextEditingController();
  final bp = TextEditingController();
  final diabetes = TextEditingController();
  final smoking = TextEditingController();
  final anaemia = TextEditingController();
  final checktime = TextEditingController();
  final hypertension = TextEditingController();
  final heartdisease = TextEditingController();
  final married = TextEditingController();
  final workingtype = TextEditingController();
  final residencetype = TextEditingController();
  final glucose = TextEditingController();
  


var queryParameters = {
  'username': username.text,
  'age': age.text,
  'height': height.text,
  'weight': weight.text,
  'gender':gender.text,
  'bp':bp.text,
  'diabetes':diabetes.text,
  'smoking':smoking.text,
  'anaemia':anaemia.text,
  'checktime':checktime.text,
  'hypertension':hypertension.text,
  'heartdisease':heartdisease.text,
  'married':married.text,
  'workingtype':workingtype.text,
  'residencetype':residencetype.text,
  'glucose':glucose.text,
};

Future<void> createOrderMessage() async {
  String stringx = 'https://totalyaccurateapi.herokuapp.com/heartandstroke?username='+username.text+'&age='+age.text+'&height='+height.text+'&weight='+weight.text+'&gender='+gender.text+'&bp='+bp.text+'&diabetes='+diabetes.text+'&smoking='+smoking.text+'&anaemia='+anaemia.text+'&checktime='+checktime.text+'&hypertension='+hypertension.text+'&heartdisease='+heartdisease.text+'&married='+married.text+'&workingtype='+workingtype.text+'&residencetype='+residencetype.text+'&glucose='+glucose.text;
  var r = await Requests.get(stringx);
  r.raiseForStatus();
 stringtwo = r.content();
}


class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
  
}



class _MyCustomFormState extends State<HomeScreen> {
  
 


  @override
  void dispose() {
   username.dispose();
    super.dispose();}

    

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title:Text('Home page'),),
      drawer: MainDrawer(),
       
      body: SingleChildScrollView(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: <Widget>[
            
             TextField(
               controller: username,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Username',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: age,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Age in numbers',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: height,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Height in cms',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: weight,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Weight in kgs',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: bp,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Gender (Male/Female/Other)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            

            SizedBox(height:10),
            TextField(
              controller: diabetes,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Diabetic (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: smoking,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Smoking (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: anaemia,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Anaemic (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: checktime,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Last checkup was done (months) ago',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: hypertension,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Hypertension (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: heartdisease,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'History of heart disease (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: married,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Married (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: workingtype,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Worktype (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: hypertension,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Hypertension (Yes/No)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: residencetype,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Residence (Rural/Urban)',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height:10),
            TextField(
              controller: glucose,
              style: TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Glucose level',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height:20),
             ElevatedButton(child: Text('SUBMIT'),
            onPressed:() {
              createOrderMessage();
            },
            ),
             SizedBox(height:20),
             Text('Please fill further details',
            style:TextStyle(fontSize:18,
            ),
            ),
              ElevatedButton(child: Text('GO TO SYMPTOMS PAGE'),
            onPressed:() {
              Navigator.of(context).pushNamed(SymptomsScreen.routeName);
            },
            ),
             SizedBox(height:20),
             Text(
               stringtwo,
             ),

             Text(
               username.text,
             ),
          ],
        ),
      ),
    );
  } 
}