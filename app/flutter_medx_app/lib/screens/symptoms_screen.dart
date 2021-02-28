import 'package:flutter/material.dart';
import './main_drawer.dart';
import './details_screen.dart';
//import 'package:flutter/material.dart';
//import 'package:hopeitworks/screens/login_screen.dart';
//import './details_screen.dart';
//import './getting_started_screen.dart'; 
//import './login_screen.dart';
//import './signup_screen.dart'; 
//import './home_screen.dart';  
//import './article_screen.dart';
//import './recommendations.dart';
//import './full_report.dart';
//import './symptoms_screen.dart';
//import 'package:hopeitworks/screens/home_screen.dart';
//import '/home_screen.dart';  
          //import 'package:flutter/material.dart';  
      
    
      
    class SymptomsScreen extends StatefulWidget {  
     
      static const routeName = './symptoms-screen';
      @override  
       
      _HomePageState createState() => _HomePageState();  
     
    }  
      
    class _HomePageState extends State<SymptomsScreen> { 
      
bool back_pain = false;
bool constipation = false;
bool abdominal_pain = false;
bool diarrhoea = false;
bool mild_fever = false;
bool yellow_urine = false;
bool yellowing_of_eyes = false;
bool acute_liver_failure = false;
bool fluid_overload = false;
bool swelling_of_stomach = false;
bool swelled_lymph_nodes = false;
bool malaise = false;
bool blurred_and_distorted_vision = false;
bool phlegm = false;
bool throat_irritation = false;
bool redness_of_eyes = false;
bool sinus_pressure = false;
bool runny_nose = false;
bool congestion = false;
bool chest_pain = false;
bool weakness_in_limbs = false;
bool fast_heart_rate = false;
bool pain_during_bowel_movements = false;
bool pain_in_anal_region = false;
bool bloody_stool = false;
bool irritation_in_anus = false;
bool neck_pain = false;
bool dizziness = false;
bool cramps = false;
bool bruising = false;
bool obesity = false;
bool swollen_legs = false;
bool swollen_blood_vessels = false;
bool puffy_face_and_eyes = false;
bool enlarged_thyroid = false;
bool brittle_nails = false;
bool swollen_extremeties = false;
bool excessive_hunger = false;
bool extra_marital_contacts = false;
bool drying_and_tingling_lips = false;
bool slurred_speech = false;
bool knee_pain = false;
bool hip_joint_pain = false;
bool muscle_weakness = false;
bool stiff_neck = false;
bool swelling_joints = false;
bool movement_stiffness = false;
bool spinning_movements = false;
bool loss_of_balance = false;
bool unsteadiness = false;
bool weakness_of_one_body_side = false;
bool loss_of_smell = false;
bool bladder_discomfort = false;
bool foul_smell_of_urine = false;
bool continuous_feel_of_urine = false;
bool passage_of_gases = false;
bool internal_itching = false;
bool toxic_look_typhos = false;
bool depression = false;
bool irritability = false;
bool muscle_pain = false;
bool altered_sensorium = false;
bool red_spots_over_body = false;
bool belly_pain = false;
bool abnormal_menstruation = false;
bool dischromic_patches = false;
bool watering_from_eyes = false;
bool increased_appetite = false;
bool polyuria = false;
bool family_history = false;
bool mucoid_sputum = false;
bool rusty_sputum = false;
bool lack_of_concentration = false;
bool visual_disturbances = false;
bool receiving_blood_transfusion = false;
bool receiving_unsterile_injections = false;
bool coma = false;
bool stomach_bleeding = false;
bool distention_of_abdomen = false;
bool history_of_alcohol_consumption = false;
bool blood_in_sputum = false;
bool prominent_veins_on_calf = false;
bool palpitations = false;
bool painful_walking = false;
bool pus_filled_pimples = false;
bool blackheads = false;
bool scurring = false;
bool skin_peeling = false;
bool silver_like_dusting = false;
bool small_dents_in_nails = false;
bool inflammatory_nails = false;
bool blister = false;
bool red_sore_around_nose = false;
bool yellow_crust_ooze = false;
      @override  
      Widget build(BuildContext context) {  
        return MaterialApp(  
          debugShowCheckedModeBanner: false,
          home: Scaffold(  
            appBar: AppBar(title: Text('Symptoms'),),  
            
             drawer: MainDrawer(), 
            body: SingleChildScrollView(  
      
               
                child: Column(  
                  children: <Widget>[ 
                     TextField(
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
            SizedBox(height: 15),
Row(children: <Widget>[SizedBox(width: 10,),Text('back_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.back_pain,onChanged: (bool value) {setState((){  this.back_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('constipation: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.constipation,onChanged: (bool value) {setState((){  this.constipation = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('abdominal_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.abdominal_pain,onChanged: (bool value) {setState((){  this.abdominal_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('diarrhoea: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.diarrhoea,onChanged: (bool value) {setState((){  this.diarrhoea = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('mild_fever: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.mild_fever,onChanged: (bool value) {setState((){  this.mild_fever = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('yellow_urine: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.yellow_urine,onChanged: (bool value) {setState((){  this.yellow_urine = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('yellowing_of_eyes: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.yellowing_of_eyes,onChanged: (bool value) {setState((){  this.yellowing_of_eyes = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('acute_liver_failure: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.acute_liver_failure,onChanged: (bool value) {setState((){  this.acute_liver_failure = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('fluid_overload: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.fluid_overload,onChanged: (bool value) {setState((){  this.fluid_overload = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('swelling_of_stomach: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.swelling_of_stomach,onChanged: (bool value) {setState((){  this.swelling_of_stomach = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('swelled_lymph_nodes: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.swelled_lymph_nodes,onChanged: (bool value) {setState((){  this.swelled_lymph_nodes = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('malaise: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.malaise,onChanged: (bool value) {setState((){  this.malaise = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('blurred_and_distorted_vision: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.blurred_and_distorted_vision,onChanged: (bool value) {setState((){  this.blurred_and_distorted_vision = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('phlegm: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.phlegm,onChanged: (bool value) {setState((){  this.phlegm = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('throat_irritation: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.throat_irritation,onChanged: (bool value) {setState((){  this.throat_irritation = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('redness_of_eyes: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.redness_of_eyes,onChanged: (bool value) {setState((){  this.redness_of_eyes = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('sinus_pressure: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.sinus_pressure,onChanged: (bool value) {setState((){  this.sinus_pressure = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('runny_nose: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.runny_nose,onChanged: (bool value) {setState((){  this.runny_nose = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('congestion: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.congestion,onChanged: (bool value) {setState((){  this.congestion = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('chest_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.chest_pain,onChanged: (bool value) {setState((){  this.chest_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('weakness_in_limbs: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.weakness_in_limbs,onChanged: (bool value) {setState((){  this.weakness_in_limbs = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('fast_heart_rate: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.fast_heart_rate,onChanged: (bool value) {setState((){  this.fast_heart_rate = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('pain_during_bowel_movements: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.pain_during_bowel_movements,onChanged: (bool value) {setState((){  this.pain_during_bowel_movements = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('pain_in_anal_region: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.pain_in_anal_region,onChanged: (bool value) {setState((){  this.pain_in_anal_region = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('bloody_stool: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.bloody_stool,onChanged: (bool value) {setState((){  this.bloody_stool = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('irritation_in_anus: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.irritation_in_anus,onChanged: (bool value) {setState((){  this.irritation_in_anus = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('neck_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.neck_pain,onChanged: (bool value) {setState((){  this.neck_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('dizziness: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.dizziness,onChanged: (bool value) {setState((){  this.dizziness = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('cramps: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.cramps,onChanged: (bool value) {setState((){  this.cramps = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('bruising: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.bruising,onChanged: (bool value) {setState((){  this.bruising = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('obesity: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.obesity,onChanged: (bool value) {setState((){  this.obesity = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('swollen_legs: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.swollen_legs,onChanged: (bool value) {setState((){  this.swollen_legs = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('swollen_blood_vessels: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.swollen_blood_vessels,onChanged: (bool value) {setState((){  this.swollen_blood_vessels = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('puffy_face_and_eyes: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.puffy_face_and_eyes,onChanged: (bool value) {setState((){  this.puffy_face_and_eyes = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('enlarged_thyroid: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.enlarged_thyroid,onChanged: (bool value) {setState((){  this.enlarged_thyroid = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('brittle_nails: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.brittle_nails,onChanged: (bool value) {setState((){  this.brittle_nails = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('swollen_extremeties: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.swollen_extremeties,onChanged: (bool value) {setState((){  this.swollen_extremeties = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('excessive_hunger: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.excessive_hunger,onChanged: (bool value) {setState((){  this.excessive_hunger = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('extra_marital_contacts: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.extra_marital_contacts,onChanged: (bool value) {setState((){  this.extra_marital_contacts = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('drying_and_tingling_lips: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.drying_and_tingling_lips,onChanged: (bool value) {setState((){  this.drying_and_tingling_lips = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('slurred_speech: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.slurred_speech,onChanged: (bool value) {setState((){  this.slurred_speech = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('knee_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.knee_pain,onChanged: (bool value) {setState((){  this.knee_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('hip_joint_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.hip_joint_pain,onChanged: (bool value) {setState((){  this.hip_joint_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('muscle_weakness: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.muscle_weakness,onChanged: (bool value) {setState((){  this.muscle_weakness = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('stiff_neck: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.stiff_neck,onChanged: (bool value) {setState((){  this.stiff_neck = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('swelling_joints: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.swelling_joints,onChanged: (bool value) {setState((){  this.swelling_joints = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('movement_stiffness: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.movement_stiffness,onChanged: (bool value) {setState((){  this.movement_stiffness = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('spinning_movements: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.spinning_movements,onChanged: (bool value) {setState((){  this.spinning_movements = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('loss_of_balance: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.loss_of_balance,onChanged: (bool value) {setState((){  this.loss_of_balance = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('unsteadiness: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.unsteadiness,onChanged: (bool value) {setState((){  this.unsteadiness = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('weakness_of_one_body_side: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.weakness_of_one_body_side,onChanged: (bool value) {setState((){  this.weakness_of_one_body_side = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('loss_of_smell: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.loss_of_smell,onChanged: (bool value) {setState((){  this.loss_of_smell = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('bladder_discomfort: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.bladder_discomfort,onChanged: (bool value) {setState((){  this.bladder_discomfort = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('foul_smell_of_urine: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.foul_smell_of_urine,onChanged: (bool value) {setState((){  this.foul_smell_of_urine = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('continuous_feel_of_urine: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.continuous_feel_of_urine,onChanged: (bool value) {setState((){  this.continuous_feel_of_urine = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('passage_of_gases: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.passage_of_gases,onChanged: (bool value) {setState((){  this.passage_of_gases = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('internal_itching: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.internal_itching,onChanged: (bool value) {setState((){  this.internal_itching = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('toxic_look_typhos: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.toxic_look_typhos,onChanged: (bool value) {setState((){  this.toxic_look_typhos = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('depression: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.depression,onChanged: (bool value) {setState((){  this.depression = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('irritability: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.irritability,onChanged: (bool value) {setState((){  this.irritability = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('muscle_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.muscle_pain,onChanged: (bool value) {setState((){  this.muscle_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('altered_sensorium: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.altered_sensorium,onChanged: (bool value) {setState((){  this.altered_sensorium = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('red_spots_over_body: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.red_spots_over_body,onChanged: (bool value) {setState((){  this.red_spots_over_body = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('belly_pain: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.belly_pain,onChanged: (bool value) {setState((){  this.belly_pain = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('abnormal_menstruation: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.abnormal_menstruation,onChanged: (bool value) {setState((){  this.abnormal_menstruation = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('dischromic_patches: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.dischromic_patches,onChanged: (bool value) {setState((){  this.dischromic_patches = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('watering_from_eyes: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.watering_from_eyes,onChanged: (bool value) {setState((){  this.watering_from_eyes = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('increased_appetite: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.increased_appetite,onChanged: (bool value) {setState((){  this.increased_appetite = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('polyuria: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.polyuria,onChanged: (bool value) {setState((){  this.polyuria = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('family_history: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.family_history,onChanged: (bool value) {setState((){  this.family_history = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('mucoid_sputum: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.mucoid_sputum,onChanged: (bool value) {setState((){  this.mucoid_sputum = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('rusty_sputum: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.rusty_sputum,onChanged: (bool value) {setState((){  this.rusty_sputum = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('lack_of_concentration: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.lack_of_concentration,onChanged: (bool value) {setState((){  this.lack_of_concentration = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('visual_disturbances: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.visual_disturbances,onChanged: (bool value) {setState((){  this.visual_disturbances = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('receiving_blood_transfusion: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.receiving_blood_transfusion,onChanged: (bool value) {setState((){  this.receiving_blood_transfusion = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('receiving_unsterile_injections: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.receiving_unsterile_injections,onChanged: (bool value) {setState((){  this.receiving_unsterile_injections = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('coma: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.coma,onChanged: (bool value) {setState((){  this.coma = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('stomach_bleeding: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.stomach_bleeding,onChanged: (bool value) {setState((){  this.stomach_bleeding = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('distention_of_abdomen: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.distention_of_abdomen,onChanged: (bool value) {setState((){  this.distention_of_abdomen = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('history_of_alcohol_consumption: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.history_of_alcohol_consumption,onChanged: (bool value) {setState((){  this.history_of_alcohol_consumption = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('blood_in_sputum: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.blood_in_sputum,onChanged: (bool value) {setState((){  this.blood_in_sputum = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('prominent_veins_on_calf: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.prominent_veins_on_calf,onChanged: (bool value) {setState((){  this.prominent_veins_on_calf = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('palpitations: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.palpitations,onChanged: (bool value) {setState((){  this.palpitations = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('painful_walking: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.painful_walking,onChanged: (bool value) {setState((){  this.painful_walking = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('pus_filled_pimples: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.pus_filled_pimples,onChanged: (bool value) {setState((){  this.pus_filled_pimples = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('blackheads: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.blackheads,onChanged: (bool value) {setState((){  this.blackheads = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('scurring: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.scurring,onChanged: (bool value) {setState((){  this.scurring = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('skin_peeling: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.skin_peeling,onChanged: (bool value) {setState((){  this.skin_peeling = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('silver_like_dusting: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.silver_like_dusting,onChanged: (bool value) {setState((){  this.silver_like_dusting = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('small_dents_in_nails: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.small_dents_in_nails,onChanged: (bool value) {setState((){  this.small_dents_in_nails = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('inflammatory_nails: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.inflammatory_nails,onChanged: (bool value) {setState((){  this.inflammatory_nails = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('blister: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.blister,onChanged: (bool value) {setState((){  this.blister = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('red_sore_around_nose: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.red_sore_around_nose,onChanged: (bool value) {setState((){  this.red_sore_around_nose = value; }); },  ), ],  ),
Row(children: <Widget>[SizedBox(width: 10,),Text('yellow_crust_ooze: ',style:TextStyle(fontSize:17.0),),Checkbox(checkColor: Colors.white,activeColor: Colors.blue,value: this.yellow_crust_ooze,onChanged: (bool value) {setState((){  this.yellow_crust_ooze = value; }); },  ), ],  ), 
                    SizedBox(height:20),
             ElevatedButton(child: Text('SUBMIT'),
            onPressed:() {
            }
            ),
             SizedBox(height:20),
             Text('VIEW REPORT',
            style:TextStyle(fontSize:18,
            ),
            ),
              ElevatedButton(child: Text('GENERATE REPORT'),
            onPressed:() {
               Navigator.push(context, new MaterialPageRoute(
   builder: (context) => new DetailsScreen())
 );
            },
            ),

                      
                  ],  
                )  
            ),  
          ),  
        );
         
         
      }  
    }  