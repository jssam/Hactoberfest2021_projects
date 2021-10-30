import  phonenumbers
from phonenumbers import carrier
from phonenumbers import geocoder

Phonenumber=input("Enter Your Phone Number: ")
number=phonenumbers.parse(Phonenumber)
print("Region: ",geocoder.description_for_number(number,'en'))
print("Service Provider: ",carrier.name_for_number(number,'en'),end=" ")