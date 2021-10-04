//
// Created by abhi on 16/08/2021.
//
//print reverse string
#include<iostream>
#include <string>
using namespace std;
void reverseString(string n){
    if(n.length()==0)return;
    reverseString(n.substr(1));
    cout<<n[0];
}
//>><<??//::""??""::""::"::""::""::""::""::""::""::""::""::""::""::""::""::""::""::""::""::""::""::

string pireplace(string n ,int i=0){
    if(i==n.length())return n;
    if (n[i] =='p' && n[i+1] =='i'){
        n.erase(i,2);
        n.insert(i,"3.14");
    }
    return pireplace(n,i+1);
}
void towerOfHanoi(int n,char src,char dest,char hlper){ //imporant and difficult one
    if(n==0)return;
    towerOfHanoi(n-1,src,hlper,dest);
    cout<<"Move"<<n<<" From "<<src<<" to "<<dest<<endl;
    towerOfHanoi(n-1, hlper,dest,src);
}
string remdup(string a){
    if(a.length()==0)return a;
    char ch=a[0];
   string n= remdup(a.substr(1));
   if(n[0]==ch){
       return n;
   }
    return ch+n;
}
//substring
void subs(string a, string nn="") {
    if(a.length()==0){cout<<nn<<endl; return;}
    char m=a[0];
    string temp=a.substr(1);
    subs(temp,nn);
    subs(temp,nn+m);
}
//add x in the end
string addX(string a){
    if(a.length()==0)return a;
    char temp =a[0];
    string n= addX(a.substr(1));
    if(temp=='x')return n+temp;
    return temp+n;
}
//genrate all sun strings

  void substringassi(string a,string b=""){
   if(a.length()==0){cout<<b<<endl;return;}
    char i=a[0];
   int code = i;

   string temp = a.substr(1);
   substringassi(temp,b);
   substringassi(temp,b+i);
   substringassi(temp,b+ to_string(code));
}

//every possible combination fromm key pad


int main(){
    string ar[] {"!`","!@","abcd","efg","hijk","lmno","pqrst","uvw","xyz"};
    cout<<"//////////////////sub sringgggg///\n\n";
    subs(ar[2]+ar[3]);
    string n;
    reverseString("binod");
    towerOfHanoi(3,'A','B','C');
    cout<<pireplace("abpiishpispi")<<endl;
    cout<<remdup("aaabbacddd")<<endl;
    cout<<addX("abhixrihxrfhxgjgxdx");
       cout<<endl;
        substringassi("ab");
       cout<<endl;
       subs("abcde");
    return 0;
}

