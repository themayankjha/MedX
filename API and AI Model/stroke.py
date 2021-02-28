
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import GradientBoostingClassifier

def stroke(gender, age, hypertension, heart_disease, married, work, residence, glucose, smoking, weight, height):
    bmi = weight / height**2
    
    df = pd.read_csv('static/stroke.csv')
    
    df=df.drop(columns='id',axis=1)
    df.fillna(df.mode())
    df=df.dropna()
    
    df.gender.replace({'Male': 1, 'Female': 0, "Other": 2}, inplace=True)
    
    df.ever_married.replace({'No': 0, 'Yes': 1}, inplace=True)
    
    df.work_type.replace({'Private': 0, 'Self-employed': 1, 'children': 2,'Govt_job':3,'Never_worked':4}, inplace=True)
    
    df.Residence_type.replace({'Urban': 0, 'Rural': 1}, inplace=True)
    
    df.smoking_status.replace({'never smoked': 0, 'Unknown': 1,'formerly smoked':2,'smokes':3}, inplace=True)
    
    X = df.drop(columns=["stroke"])
    y = df["stroke"]
    
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=44, shuffle =True)
    
    GBCModel = GradientBoostingClassifier(n_estimators=100,max_depth=3,random_state=33) 
    GBCModel.fit(X_train, y_train)
    
    return GBCModel.predict([[gender, age, hypertension, heart_disease, married, work, residence, glucose, bmi, smoking]])
    
