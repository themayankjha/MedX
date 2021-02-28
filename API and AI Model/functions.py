import mysql.connector
from stroke import stroke
from heartfail import heartfail
from disease import disease

def heartandstrokeprediction(username):
    db = mysql.connector.connect(
        host="remotemysql.com",
        user="hwW4R6cA0s",
        passwd="9bVe4xsxvX",
        db="hwW4R6cA0s"
    )
    cursor = db.cursor()
    sql = "SELECT * FROM heartandstrokeprediction WHERE username = %s"
    val = (username, )
    cursor.execute(sql, val)
    result = cursor.fetchall()
    params = dict()
    (params['username'],params['heartfail'],params['stroke'])=result[0]
    return params

def diseaseprediction(username):
    db = mysql.connector.connect(
        host="remotemysql.com",
        user="hwW4R6cA0s",
        passwd="9bVe4xsxvX",
        db="hwW4R6cA0s"
    )
    cursor = db.cursor()
    sql = "SELECT * FROM diseaseprediction WHERE username = %s"
    val = (username, )
    cursor.execute(sql, val)
    result = cursor.fetchall()
    params = dict()
    (params['username'],params['diseases'])=result[0]
    return params

def heartandstrokedatabaseentry(username,age,height,weight,gender,bloodpressure,diabetes,smoking,anaemia,lastcheckup,hypertension,heartdisease,married,worktype,residencetype,glucoselevel):
    db = mysql.connector.connect(
        host="remotemysql.com",
        user="hwW4R6cA0s",
        passwd="9bVe4xsxvX",
        db="hwW4R6cA0s"
    )
    cursor = db.cursor()
    sql = "INSERT INTO heartandstroke VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    val = (username,age,height,weight,gender,bloodpressure,diabetes,smoking,anaemia,lastcheckup,hypertension,heartdisease,married,worktype,residencetype,glucoselevel)
    cursor.execute(sql, val)
    strokeprediction=stroke(gender,age,hypertension,heartdisease,married,worktype,residencetype,glucoselevel,smoking,weight,height)
    heartfailpredictionlist=heartfail(age,gender,anaemia,bloodpressure,diabetes,smoking,lastcheckup)
    heartfailprediction=heartfailpredictionlist[0]
    sql = "INSERT INTO heartandstrokedetection (username,heartfail,stroke) VALUES (%s,%s,%s)"
    val = (username,heartfailprediction,strokeprediction)
    cursor.execute(sql, val)
    db.commit()
    return "successful"

def symptomsdatabaseentry(username,back_pain,constipation,abdominal_pain,diarrhoea,mild_fever,yellow_urine,yellowing_of_eyes,acute_liver_failure,fluid_overload,swelling_of_stomach,swelled_lymph_nodes,malaise,blurred_and_distorted_vision,phlegm,throat_irritation,redness_of_eyes,sinus_pressure,runny_nose,congestion,chest_pain,weakness_in_limbs,fast_heart_rate,pain_during_bowel_movements,pain_in_anal_region,bloody_stool,irritation_in_anus,neck_pain,dizziness,cramps,bruising,obesity,swollen_legs,swollen_blood_vessels,puffy_face_and_eyes,enlarged_thyroid,brittle_nails,swollen_extremeties,excessive_hunger,extra_marital_contacts,drying_and_tingling_lips,slurred_speech,knee_pain,hip_joint_pain,muscle_weakness,stiff_neck,swelling_joints,movement_stiffness,spinning_movements,loss_of_balance,unsteadiness,weakness_of_one_body_side,loss_of_smell,bladder_discomfort,foul_smell_of_urine,continuous_feel_of_urine,passage_of_gases,internal_itching,toxic_look_typhos,depression,irritability,muscle_pain,altered_sensorium,red_spots_over_body,belly_pain,abnormal_menstruation,dischromic_patches,watering_from_eyes,increased_appetite,polyuria,family_history,mucoid_sputum,rusty_sputum,lack_of_concentration,visual_disturbances,receiving_blood_transfusion,receiving_unsterile_injections,coma,stomach_bleeding,distention_of_abdomen,history_of_alcohol_consumption,blood_in_sputum,prominent_veins_on_calf,palpitations,painful_walking,pus_filled_pimples,blackheads,scurring,skin_peeling,silver_like_dusting,small_dents_in_nails,inflammatory_nails,blister,red_sore_around_nose,yellow_crust_ooze):
    db = mysql.connector.connect(
        host="remotemysql.com",
        user="hwW4R6cA0s",
        passwd="9bVe4xsxvX",
        db="hwW4R6cA0s"
    )
    cursor = db.cursor()
    sql = "INSERT INTO symptoms VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    val = (username,back_pain,constipation,abdominal_pain,diarrhoea,mild_fever,yellow_urine,yellowing_of_eyes,acute_liver_failure,fluid_overload,swelling_of_stomach,swelled_lymph_nodes,malaise,blurred_and_distorted_vision,phlegm,throat_irritation,redness_of_eyes,sinus_pressure,runny_nose,congestion,chest_pain,weakness_in_limbs,fast_heart_rate,pain_during_bowel_movements,pain_in_anal_region,bloody_stool,irritation_in_anus,neck_pain,dizziness,cramps,bruising,obesity,swollen_legs,swollen_blood_vessels,puffy_face_and_eyes,enlarged_thyroid,brittle_nails,swollen_extremeties,excessive_hunger,extra_marital_contacts,drying_and_tingling_lips,slurred_speech,knee_pain,hip_joint_pain,muscle_weakness,stiff_neck,swelling_joints,movement_stiffness,spinning_movements,loss_of_balance,unsteadiness,weakness_of_one_body_side,loss_of_smell,bladder_discomfort,foul_smell_of_urine,continuous_feel_of_urine,passage_of_gases,internal_itching,toxic_look_typhos,depression,irritability,muscle_pain,altered_sensorium,red_spots_over_body,belly_pain,abnormal_menstruation,dischromic_patches,watering_from_eyes,increased_appetite,polyuria,family_history,mucoid_sputum,rusty_sputum,lack_of_concentration,visual_disturbances,receiving_blood_transfusion,receiving_unsterile_injections,coma,stomach_bleeding,distention_of_abdomen,history_of_alcohol_consumption,blood_in_sputum,prominent_veins_on_calf,palpitations,painful_walking,pus_filled_pimples,blackheads,scurring,skin_peeling,silver_like_dusting,small_dents_in_nails,inflammatory_nails,blister,red_sore_around_nose,yellow_crust_ooze)
    cursor.execute(sql, val)
    symptomsprediction=disease(back_pain,constipation,abdominal_pain,diarrhoea,mild_fever,yellow_urine,yellowing_of_eyes,acute_liver_failure,fluid_overload,swelling_of_stomach,swelled_lymph_nodes,malaise,blurred_and_distorted_vision,phlegm,throat_irritation,redness_of_eyes,sinus_pressure,runny_nose,congestion,chest_pain,weakness_in_limbs,fast_heart_rate,pain_during_bowel_movements,pain_in_anal_region,bloody_stool,irritation_in_anus,neck_pain,dizziness,cramps,bruising,obesity,swollen_legs,swollen_blood_vessels,puffy_face_and_eyes,enlarged_thyroid,brittle_nails,swollen_extremeties,excessive_hunger,extra_marital_contacts,drying_and_tingling_lips,slurred_speech,knee_pain,hip_joint_pain,muscle_weakness,stiff_neck,swelling_joints,movement_stiffness,spinning_movements,loss_of_balance,unsteadiness,weakness_of_one_body_side,loss_of_smell,bladder_discomfort,foul_smell_of_urine,continuous_feel_of_urine,passage_of_gases,internal_itching,toxic_look_typhos,depression,irritability,muscle_pain,altered_sensorium,red_spots_over_body,belly_pain,abnormal_menstruation,dischromic_patches,watering_from_eyes,increased_appetite,polyuria,family_history,mucoid_sputum,rusty_sputum,lack_of_concentration,visual_disturbances,receiving_blood_transfusion,receiving_unsterile_injections,coma,stomach_bleeding,distention_of_abdomen,history_of_alcohol_consumption,blood_in_sputum,prominent_veins_on_calf,palpitations,painful_walking,pus_filled_pimples,blackheads,scurring,skin_peeling,silver_like_dusting,small_dents_in_nails,inflammatory_nails,blister,red_sore_around_nose,yellow_crust_ooze)
    sql = "INSERT INTO diseaseprediction (username,diseases) VALUES (%s,%s)"
    val = (username,symptomsprediction)
    cursor.execute(sql, val)
    db.commit()
    return "successful"
