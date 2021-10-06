import nltk
from nltk.chat.util import Chat, reflections
reflections = {
    "I am"   : "you are",
    "i was"  : "you were",
    "i"      : "you",
    "im"     :"you are",
    "I'd"    :"You would",
    "I've"   :"you have",
    "my"     :"your",
    "you are":"Iam",
    "you were":"I was ",
    "you've" :"I have",
    "you will":"i will",
    "your"   :"my",
    "yours"  :"mine",
    "you"    :"me",
    "me"     :"you",




}
pairs=[
       [
        r"my name is(.*)",
        ["Hello %1,How are you today?",]
       ],
       [
        r"hi|hello|hey",
        ["hello","HEY there",]
       ],
       [
        r"whatis your name?",
        ["I am bot created by you,you can call me vampire!!",]
       ],
       [r"how are you?",
        ["I'mdoing good.whatb about you?",]
       ],
       [
        r"sorry(.*)",
        ["itsalright","Its ok","never mind",]
       ],
       [
        r"Iam fine",
        ["Greattohear,that,how can i help you?",]
       ],
       [
        r"quit",
        ["BYE tc,seeyou soon it wasnice talkingto you"]
        
       ],
]
def chat():
  print("HI,I am achatbot created by you")
  chat=Chat(pairs,reflections)
  chat.converse()
if __name__=="__main__":
  chat()