#*************************************************************************************************************************************
#                                                       FUNCTİONS
#*************************************************************************************************************************************
def findTheOrder(list):
    temp = 0
    for i in range(len(list)):
        for j in range(i, 0, -1):
            if (list[j] < list[j - 1]):
                temp = list[j]
                list[j] = list[j - 1]
                list[j - 1] = temp
    return list


def theChampionship(list):
    returnValue = ""
    m = 1
    for i in range(len(list)):
        returnValue = returnValue + str(m) + ". Apartment:" + str(list[i][1]) + " Consumption:" + str(list[i][0]) + "\n"
        m += 1
    return returnValue


def orderOfTheGiven(frame, criterion):
    count = 0.0
    apartments = []
    maks = 0.0
    numOfPeople = frame['people']

    for i in range(len(frame[criterion])):
        for j in range(len(frame[criterion][i])):
            count += float(frame[criterion][i][j]['Consumption'])
            if count >= maks:
                maks = count
        apartments.append([count / float(numOfPeople[i]), i])
        count = 0
    return findTheOrder(apartments)

def day(frame, criterionForHeader, criterionForMeasure):
    returnList = []
    newList = []

    for i in range(len(frame[criterionForHeader])):
        newList= []
        for j in range(len(frame[criterionForHeader][i])):
            if (j > 0):
                if (frame[criterionForHeader][i][j]['TimeStamp'][0:10] == frame[criterionForHeader][i][j - 1]['TimeStamp'][0:10]):
                    newList[-1] = float(newList[-1]) + float(frame[criterionForHeader][i][j][criterionForMeasure])
                else:
                    newList.append(0)
                    newList[-1] = float(frame[criterionForHeader][i][j][criterionForMeasure])

            if (j == 0):
                newList.append(float(frame[criterionForHeader][i][j][criterionForMeasure]))

        returnList.append(newList)
    return returnList

def month(frame, criterionForHeader, criterionForMeasure):
    returnList = []
    for i in range(len(frame[criterionForHeader])):
        temp = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
        for j in range(len(frame[criterionForHeader][i])):
            month = int(frame[criterionForHeader][i][j]['TimeStamp'][5:7])
            temp[month - 1] = temp[month - 1] + float(frame[criterionForHeader][i][j][criterionForMeasure])
        returnList.append(temp)

    return returnList

def monthOrder(list,numOfMonth,numOfPeople):
    returnValue = ""
    newArr = []

    for i in range(len(list)):
        newArr.append([list[i][numOfMonth]/float(numOfPeople[i]),i])

    return newArr

def rate(month, apartment, i):
    if(month[apartment][i-1]>month[apartment][i]):
        rate_reduce = 100*(month[apartment][i-1]-month[apartment][i])/month[apartment][i-1]
        print("Your water consumption in",i+1,". month was down %",rate_reduce,"compare to",i,". month.")
    else:
        rate_reduce = 100 * (month[apartment][i-1] - month[apartment][i])/month[apartment][i]
        print("Your water consumption in",i+1,". month was down %",rate_reduce,"compare to",i,". month.")

#*************************************************************************************************************************************
#                                                      TESTİNG AND RUNNING
#*************************************************************************************************************************************

import json
import pandas as pd
from pandas.io.json import json_normalize

with open('db.json') as f:
    d = json.load(f)

works_data = pd.json_normalize(data=d['houses'], record_path='apartments')

print("The yearly data for each of the apartment's kitchen faucet:")
print(orderOfTheGiven(works_data,'Kitchen_optima_faucet.measurements'))
print()

print("The yearly championship table for kitchen faucet:")
print(theChampionship(orderOfTheGiven(works_data,'Kitchen_optima_faucet.measurements')))
print()

print("The monthly data for each of the apartment's shower faucet:")
print(month(works_data,'Hydractiva_shower.measurements','Consumption'))
print()

print("The \"average values per person in the apartment\" monthly data for each of the apartment's shower faucet:")
print(monthOrder(month(works_data,'Hydractiva_shower.measurements','Consumption'),3,works_data['people']))
print()

print("The Championship table of the month April:")
print(theChampionship(findTheOrder(monthOrder(month(works_data,'Hydractiva_shower.measurements','Consumption'),3,works_data['people']))))
print()

print("The time water flowed from washing machine day by day in apartments:")
print(day(works_data,'Washing_machine.measurements','FlowTime'))
print()

print("The rate of the consumption compare to last month:")
print(rate(month(works_data,'Hydractiva_shower.measurements','Consumption'),3,8))
print()