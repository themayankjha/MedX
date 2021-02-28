from pandas import Series, DataFrame
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import classification_report
import sklearn.metrics
from sklearn import datasets
from sklearn.ensemble import ExtraTreesClassifier
from sklearn.ensemble import RandomForestClassifier
import os

def disease(back_pain,constipation,abdominal_pain,diarrhoea,mild_fever,yellow_urine, yellowing_of_eyes,acute_liver_failure,fluid_overload,swelling_of_stomach,
    swelled_lymph_nodes,malaise,blurred_and_distorted_vision,phlegm,throat_irritation,
    redness_of_eyes,sinus_pressure,runny_nose,congestion,chest_pain,weakness_in_limbs,
    fast_heart_rate,pain_during_bowel_movements,pain_in_anal_region,bloody_stool,
    irritation_in_anus,neck_pain,dizziness,cramps,bruising,obesity,swollen_legs,
    swollen_blood_vessels,puffy_face_and_eyes,enlarged_thyroid,brittle_nails,
    swollen_extremeties,excessive_hunger,extra_marital_contacts,drying_and_tingling_lips,
    slurred_speech,knee_pain,hip_joint_pain,muscle_weakness,stiff_neck,swelling_joints,
    movement_stiffness,spinning_movements,loss_of_balance,unsteadiness,
    weakness_of_one_body_side,loss_of_smell,bladder_discomfort,foul_smell_of_urine,
    continuous_feel_of_urine,passage_of_gases,internal_itching,toxic_look_typhos,
    depression,irritability,muscle_pain,altered_sensorium,red_spots_over_body,belly_pain,
    abnormal_menstruation,dischromic_patches,watering_from_eyes,increased_appetite,polyuria,family_history,mucoid_sputum,
    rusty_sputum,lack_of_concentration,visual_disturbances,receiving_blood_transfusion,
    receiving_unsterile_injections,coma,stomach_bleeding,distention_of_abdomen,
    history_of_alcohol_consumption,blood_in_sputum,prominent_veins_on_calf,
    palpitations,painful_walking,pus_filled_pimples,blackheads,scurring,skin_peeling,
    silver_like_dusting,small_dents_in_nails,inflammatory_nails,blister,red_sore_around_nose,
    yellow_crust_ooze):
    os.environ['PATH'] = os.environ['PATH']+';'+os.environ['CONDA_PREFIX']+r"\Library\bin\graphviz"
    data = pd.read_csv('static/symptoms.csv')
    predictors = data[['back_pain','constipation','abdominal_pain','diarrhoea','mild_fever','yellow_urine', 'yellowing_of_eyes','acute_liver_failure','fluid_overload','swelling_of_stomach',
    'swelled_lymph_nodes','malaise','blurred_and_distorted_vision','phlegm','throat_irritation',
    'redness_of_eyes','sinus_pressure','runny_nose','congestion','chest_pain','weakness_in_limbs',
    'fast_heart_rate','pain_during_bowel_movements','pain_in_anal_region','bloody_stool',
    'irritation_in_anus','neck_pain','dizziness','cramps','bruising','obesity','swollen_legs',
    'swollen_blood_vessels','puffy_face_and_eyes','enlarged_thyroid','brittle_nails',
    'swollen_extremeties','excessive_hunger','extra_marital_contacts','drying_and_tingling_lips',
    'slurred_speech','knee_pain','hip_joint_pain','muscle_weakness','stiff_neck','swelling_joints',
    'movement_stiffness','spinning_movements','loss_of_balance','unsteadiness',
    'weakness_of_one_body_side','loss_of_smell','bladder_discomfort','foul_smell_of urine',
    'continuous_feel_of_urine','passage_of_gases','internal_itching','toxic_look_(typhos)',
    'depression','irritability','muscle_pain','altered_sensorium','red_spots_over_body','belly_pain',
    'abnormal_menstruation','dischromic _patches','watering_from_eyes','increased_appetite','polyuria','family_history','mucoid_sputum',
    'rusty_sputum','lack_of_concentration','visual_disturbances','receiving_blood_transfusion',
    'receiving_unsterile_injections','coma','stomach_bleeding','distention_of_abdomen',
    'history_of_alcohol_consumption','blood_in_sputum','prominent_veins_on_calf',
    'palpitations','painful_walking','pus_filled_pimples','blackheads','scurring','skin_peeling',
    'silver_like_dusting','small_dents_in_nails','inflammatory_nails','blister','red_sore_around_nose',
    'yellow_crust_ooze']]
    targets = data.prognosis
    pred_train, pred_test, tar_train, tar_test = train_test_split(predictors, targets, test_size = .4, random_state = 2)
    print(pred_train.shape)
    print(pred_test.shape)
    print(tar_train.shape)
    print(tar_test.shape)
    classifier = RandomForestClassifier(n_estimators = 4)
    classifier = classifier.fit(pred_train, tar_train)
    predictions = classifier.predict(pred_test)
    print(predictions[20])
    print(sklearn.metrics.confusion_matrix(tar_test, predictions))
    accuracy = sklearn.metrics.accuracy_score(tar_test, predictions)
    print(accuracy)
    model = ExtraTreesClassifier()
    model.fit(pred_train, tar_train)
    print(model.feature_importances_)
    return classifier.predict([[back_pain,constipation,abdominal_pain,diarrhoea,mild_fever,yellow_urine, yellowing_of_eyes,acute_liver_failure,fluid_overload,swelling_of_stomach,
    swelled_lymph_nodes,malaise,blurred_and_distorted_vision,phlegm,throat_irritation,
    redness_of_eyes,sinus_pressure,runny_nose,congestion,chest_pain,weakness_in_limbs,
    fast_heart_rate,pain_during_bowel_movements,pain_in_anal_region,bloody_stool,
    irritation_in_anus,neck_pain,dizziness,cramps,bruising,obesity,swollen_legs,
    swollen_blood_vessels,puffy_face_and_eyes,enlarged_thyroid,brittle_nails,
    swollen_extremeties,excessive_hunger,extra_marital_contacts,drying_and_tingling_lips,
    slurred_speech,knee_pain,hip_joint_pain,muscle_weakness,stiff_neck,swelling_joints,
    movement_stiffness,spinning_movements,loss_of_balance,unsteadiness,
    weakness_of_one_body_side,loss_of_smell,bladder_discomfort,foul_smell_of_urine,
    continuous_feel_of_urine,passage_of_gases,internal_itching,toxic_look_typhos,
    depression,irritability,muscle_pain,altered_sensorium,red_spots_over_body,belly_pain,
    abnormal_menstruation,dischromic_patches,watering_from_eyes,increased_appetite,polyuria,family_history,mucoid_sputum,
    rusty_sputum,lack_of_concentration,visual_disturbances,receiving_blood_transfusion,
    receiving_unsterile_injections,coma,stomach_bleeding,distention_of_abdomen,
    history_of_alcohol_consumption,blood_in_sputum,prominent_veins_on_calf,
    palpitations,painful_walking,pus_filled_pimples,blackheads,scurring,skin_peeling,
    silver_like_dusting,small_dents_in_nails,inflammatory_nails,blister,red_sore_around_nose,
    yellow_crust_ooze]])



