import json
import pandas as pd
from pandas.io.json import json_normalize
import csv

def consumption(elements, people):
    count = 0.0
    apartments = []
    maks = 0.0

    for apartment in range(len(elements)):
        for veri in range(len(elements[apartment])):
            count += float(elements[apartment][veri]['Consumption'])
            if count >= maks:
                maks = count
        people_value = people[apartment]
        water = count/float(people_value)
        apartments.append(water)
        count = 0
    return apartments

def mean_temp(elements):
    count = 0.0
    apartments = []
    maks = 0.0

    for apartment in range(len(elements)):
        for veri in range(len(elements[apartment])):
            count += float(elements[apartment][veri]['Temp'])
            if count >= maks:
                maks = count
        apartments.append(count/(len(elements[apartment])+1))
        count = 0
    return apartments

def flow_time(elements, people):
    count = 0.0
    apartments = []
    maks = 0.0

    for apartment in range(len(elements)):
        for veri in range(len(elements[apartment])):
            count += float(elements[apartment][veri]['FlowTime'])
            if count >= maks:
                maks = count
        people_value = people[apartment]
        flowTime = count/float(people_value)
        apartments.append(flowTime)
        count = 0
    return apartments

def power_consumption(elements, people):
    count = 0.0
    apartments = []
    maks = 0.0

    for apartment in range(len(elements)):
        for veri in range(len(elements[apartment])):
            count += float(elements[apartment][veri]['Power_Consumption'])
            if count >= maks:
                maks = count
        people_value = people[apartment]
        power = count/float(people_value)
        apartments.append(power)
        count = 0
    return apartments

def total_water_consumption(elements1, elements2, elements3, elements4, elements5):
    apartments = []
    total_water = 0.0
    for total in range(19):
        total_water = elements1[total]+elements2[total]+elements3[total]+elements4[total]+elements5[total]
        apartments.append(total_water)
        total_water = 0
    return apartments

def total_mean_temp(elements1, elements2, elements3, elements4, elements5):
    apartments = []
    mean_temp = 0.0
    for total in range(19):
        mean_temp = elements1[total]+elements2[total]+elements3[total]+elements4[total]+elements5[total]
        apartments.append(mean_temp/5)
        mean_temp = 0
    return apartments

def total_water_flowtime(elements1, elements2, elements3, elements4, elements5):
    apartments = []
    total_flowtime = 0.0
    for total in range(19):
        total_flowtime = elements1[total]+elements2[total]+elements3[total]+elements4[total]+elements5[total]
        apartments.append(total_flowtime)
        total_flowtime = 0
    return apartments

def total_power_consumption(elements1, elements2, elements3, elements4, elements5):
    apartments = []
    total_power = 0.0
    for total in range(19):
        total_power = elements1[total]+elements2[total]+elements3[total]+elements4[total]+elements5[total]
        apartments.append(total_power)
        total_power = 0
    return apartments

with open('db.json') as f:
    d = json.load(f)

water_data = pd.json_normalize(data=d['houses'], record_path='apartments')

shower_consumption = consumption(water_data['Hydractiva_shower.measurements'], water_data['people'])
kitchen_consumption = consumption(water_data['Kitchen_optima_faucet.measurements'], water_data['people'])
faucet_consumption = consumption(water_data['Optima_faucet.measurements'], water_data['people'])
washing_machine_consumption = consumption(water_data['Washing_machine.measurements'], water_data['people'])
dishwasher_consumption = consumption(water_data['Dishwasher.measurements'], water_data['people'])

total_water_consumption = total_water_consumption(shower_consumption,kitchen_consumption,faucet_consumption,washing_machine_consumption,dishwasher_consumption)

print("Water consumption per person in the shower = " ,shower_consumption)
print("Water consumption per person in the kitchen = " ,kitchen_consumption)
print("Water consumption per person in the optima faucet = " ,faucet_consumption)
print("Water consumption per person in the washing machine  = " ,washing_machine_consumption)
print("Water consumption per person in the dishwasher consumption = " ,dishwasher_consumption)
print("Water consumption per person in the total = " ,total_water_consumption)

print("\n")

shower_temp = mean_temp(water_data['Hydractiva_shower.measurements'])
kitchen_temp = mean_temp(water_data['Kitchen_optima_faucet.measurements'])
faucet_temp = mean_temp(water_data['Optima_faucet.measurements'])
washing_machine_temp = mean_temp(water_data['Washing_machine.measurements'])
dishwasher_temp = mean_temp(water_data['Dishwasher.measurements'])

total_water_temp = total_mean_temp(shower_temp,kitchen_temp,faucet_temp,washing_machine_temp,dishwasher_temp)

print("Avarage shower temperature = " ,shower_temp)
print("Avarage kitchen temperature = " ,kitchen_temp)
print("Avarage optima faucet temperature = " ,faucet_temp)
print("Avarage washing machine temperature = " ,washing_machine_temp)
print("Avarage dishwasher temperature = " ,dishwasher_temp)
print("Avarage total water temperature = " ,total_water_temp)

print("\n")

shower_flowtime = flow_time(water_data['Hydractiva_shower.measurements'], water_data['people'])
kitchen_flowtime = flow_time(water_data['Kitchen_optima_faucet.measurements'], water_data['people'])
faucet_flowtime = flow_time(water_data['Optima_faucet.measurements'], water_data['people'])
washing_machine_flowtime = flow_time(water_data['Washing_machine.measurements'], water_data['people'])
dishwasher_flowtime = flow_time(water_data['Dishwasher.measurements'], water_data['people'])

total_water_flowtime = total_water_flowtime(shower_flowtime,kitchen_flowtime,faucet_flowtime,washing_machine_flowtime,dishwasher_flowtime)

print("Flow time per person in the shower = " ,shower_flowtime)
print("Flow time per person in the kitchen = " ,kitchen_flowtime)
print("Flow time per person in the optima faucet = " ,faucet_flowtime)
print("Flow time per person in the washing machine  = " ,washing_machine_flowtime)
print("Flow time per person in the dishwasher consumption = " ,dishwasher_flowtime)
print("Flow time per person in the total = " ,total_water_flowtime)

print("\n")

shower_power_consumption = power_consumption(water_data['Hydractiva_shower.measurements'], water_data['people'])
kitchen_power_consumption = power_consumption(water_data['Kitchen_optima_faucet.measurements'], water_data['people'])
faucet_power_consumption = power_consumption(water_data['Optima_faucet.measurements'], water_data['people'])
washing_machine_power_consumption = power_consumption(water_data['Washing_machine.measurements'], water_data['people'])
dishwasher_power_consumption = power_consumption(water_data['Dishwasher.measurements'], water_data['people'])

total_power_consumption = total_power_consumption(shower_consumption,kitchen_consumption,faucet_consumption,washing_machine_consumption,dishwasher_consumption)

print("Power consumption per person in the shower = " ,shower_power_consumption)
print("Power consumption per person in the kitchen = " ,kitchen_power_consumption)
print("Power consumption per person in the optima faucet = " ,faucet_power_consumption)
print("Power consumption per person in the washing machine  = " ,washing_machine_power_consumption)
print("Power consumption per person in the dishwasher consumption = " ,dishwasher_power_consumption)
print("Power consumption per person in the total = " ,total_power_consumption)

print("\n")
