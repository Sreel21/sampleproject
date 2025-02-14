import pandas as pd
import pickle
import re

def predict():
    file1 = open("media/input/test.xml", "r")
    file2 = open("testing_code/getPermissions.txt", "w")

    for line in file1:
        if "android.permission" in str(line):
            permission1 = re.search("android\.permission\.[\w.]+", line).group() + '\n'
            file2.write(permission1)
    file1.close()
    file2.close()

    model = pickle.load(open('testing_code/model_ann.sav', 'rb'))

    file1 = open('testing_code/features.txt', 'r')
    features = file1.read()
    file1.close()

    file2 = open('testing_code/getPermissions.txt', 'r')
    permissions = file2.read()
    file2.close()

    features = features.split('\n')
    permissions = permissions.split('\n')

    val = []

    for i in features:
        if i in permissions:
            val.append(1)
        elif i not in permissions:
            val.append(0)
        else:
            print('error')

    val = [val]

    df = pd.DataFrame(val, columns=features)
    df = df.iloc[:, :-1]

    pred = model.predict(df)

    result = str()

    if pred[0] == 1:
        result = 'Malware detected'
    else:
        result = 'No malware detected'

    return result

# result = predict()
# print("Result:", result)
