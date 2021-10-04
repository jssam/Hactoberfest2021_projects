# import the module
import python_weather
import asyncio

async def getweather():
    # declare the client. format defaults to metric system (celcius, km/h, etc.)
    client = python_weather.Client(format=python_weather.IMPERIAL)

    try:# fetch a weather forecast from a city
        weather = await client.find(city)

    # returns the current day's forecast temperature (int)
        print(weather.current.temperature)

    # get the weather forecast for a few days
        for forecast in weather.forecasts:
            print(str(forecast.date), forecast.sky_text, forecast.temperature)
    except:
        print("YOUR CITY NOT FOUND")

    await client.close()
city=str(input("ENTER YOUR CITY:"))
if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(getweather())