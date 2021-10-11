"""This program will prompt for a URL, read the JSON data from that URL using urllib and then parse and extract
the comment counts from the JSON data, compute the sum of the numbers in the file and enter the sum below:
ACTUAL DATA : http://py4e-data.dr-chuck.net/comments_1189781.json (Sum ends with 89) """


# import required packages
import urllib.request, urllib.parse, urllib.error
import json
import ssl


# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

# Enter http://py4e-data.dr-chuck.net/comments_1189781.json as URL
url = input("\nEnter URL : ")

# open the URL, fetch, read and decode the contents of the given URL
data = urllib.request.urlopen(url, context=ctx).read().decode()
print(f"\nRetrieving : {url}")
print(f"\nRetrieved {len(data)} characters")

info = json.loads(data)                     # deserialize the json data into python data
num_list = list()                           # empty number list for storing all numbers
for item in info["comments"]:               # traverse through elements of info["comments"] list
    num_list.append(int(item["count"]))     # add numbers to number list

print("\nNumber List :", num_list)
print("\nTotal numbers present in the list :", len(num_list))
print(f"\nSum of these {len(num_list)} Numbers :", sum(num_list), "\n")
