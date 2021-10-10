#include <iostream>

#include <string>

#include <stdlib.h>

#include <time.h>

using namespace std;

int random (int max);

int main(){

    srand(time(NULL));

    

    class Entity{

        public:

        int life;

        int damageAttack;

        string name;

        Entity(int _life,int _damageAttack,string _name):life(_life),damageAttack(_damageAttack),name(_name){};

        void attack(Entity *target){

          cout<<name<<" attack to "<<target->name<<endl;

            target->life-=this->damageAttack;

           

            target->life<0?target->life=0:target->life;

            

            cout<<target->name<<"-> life:"<<target->life<<endl<<endl;  

        };

    };

    

    class Enemy: public Entity{

        public:

        Enemy(int life,int damageAttack,string name):Entity(life+random(50),damageAttack+random(15),name){};

       

    };

    

    class Player: public Entity{

        public:

        Player(int life,int damageAttack,string name):Entity(life+random(20),damageAttack+random(5),name){};

    };

    

    string enemies[3]{"ghost","ninja","zombie"};

    

    

    string *plName=new string;

    

    cin >>*plName;

    

    *plName==""?*plName="player":*plName;

    Player player(90,20,*plName);

    

    delete plName;

    

    Entity *pl =&player;

    

    

    Enemy enemy(70,10,enemies[random(3)]);

    Entity *en=&enemy;

    

    cout<<"--Enemy-- "<<endl<<"type:"<<en->name<<endl;

    cout<<"life:"<<en->life<<endl<<"damage attack:"<<en->damageAttack<<endl;

    

    cout<<"\n--Player-- "<<endl<<"name:"<<pl->name<<endl;

    cout<<"life:"<<pl->life<<endl<<"damage attack:"<<pl->damageAttack;

    cout<<"\n\n --Battle start--"<<endl<<endl;

    

    while(pl->life>0 && en->life>0){

        random(2)?pl->attack(en):en->attack(pl);

    };

    

    cout<<"\n\n";

    

    string winName = pl->life <=0 ? en->name: pl->name;

    

    cout<<"--:: "<<winName<<" win the battle::--";

    

    return 0;

}

int random(int max){

     return rand() % max;

   

}
