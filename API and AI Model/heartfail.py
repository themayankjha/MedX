
import pandas as pd
from sklearn.model_selection import train_test_split
import sklearn.metrics
from sklearn.ensemble import ExtraTreesClassifier
from sklearn.ensemble import RandomForestClassifier
import os


def heartfail(age, sex, anaemia, bp, diabetes, smoking, time):
    os.environ['PATH'] = os.environ['PATH']+';'+os.environ['CONDA_PREFIX']+r"\Library\bin\graphviz"
    data = pd.read_csv('static/heart_failure.csv')
    predictors = data[["age", "anaemia", "diabetes", "high_blood_pressure", "sex", "smoking", "time"]]
    targets = data.DEATH_EVENT
    pred_train, pred_test, tar_train, tar_test = train_test_split(predictors, targets, test_size = .4, random_state = 2)
    classifier = RandomForestClassifier(n_estimators = 400)
    classifier = classifier.fit(pred_train, tar_train)
    predictions = classifier.predict(pred_test)
    accuracy = sklearn.metrics.accuracy_score(tar_test, predictions)
    model = ExtraTreesClassifier()
    model.fit(pred_train, tar_train)
    lst = []
    lst.append(classifier.predict([[age, anaemia, diabetes, bp, sex, smoking, time]])[0])
    lst.append(accuracy*100)
    return lst



