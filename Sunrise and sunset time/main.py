import requests
from datetime import datetime

MY_LAT = 16.7028412
MY_LOG = 74.2405329

parameters = {
    'lat': MY_LAT,
    'lng': MY_LOG,
    'formatted': 0

}

response = requests.get('https://api.sunrise-sunset.org/json', params=parameters)
response.raise_for_status()
data = response.json()
sunrise = data['results']["sunrise"].split("T")[1].split(":")
sunset = data['results']["sunset"].split("T")[1].split(":")
print(sunrise[0])
print(sunset[0])






timenow = datetime.now()
print(timenow.hour)
