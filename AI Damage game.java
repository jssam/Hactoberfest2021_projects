import java.util.Scanner;

import java.util.Random;

public class Program {

public static void main(String[] args) {

/*3 modes:easy,medium,hard 

* Type one in to the console and run it

*you will see what happens!

*If you choose hard,the AI will regenerate its health

*/

int damage=0;

Scanner scan=new Scanner(System.in);

String level=scan.nextLine();

int your_life=10;

int score=0;

int AI_life=10;

for(;your_life>0;) {

damage=0;

 

damage=p1.random_shot(damage);

switch(level) {

case "easy":damage=damage+4;break;

case "hard":damage=damage-2;break;

}

AI_life=AI_life-damage;

if(damage>=0) {

System.out.println("You deal "+ damage +" point(s) of damage to to the AI!");

}

else {

System.out.println("You deal 0 points of damage to to the AI!");

}

System.out.println("P1 hp:"+ your_life+"      AI hp:"+ AI_life+"    your score:"+score);

if(AI_life<=0) {

System.out.println("______________________________________________________________________");

 System.out.println("OOF!!");

 System.out.println(">-<):");

 System.out.println("The AI died and a new one is coming watch out!");

 score++;

 AI_life=10;}

damage=0;

 

damage=p2.random_shot(damage);

your_life=your_life-damage;

System.out.println("The AI deals "+ damage +" point(s) of damage to you!");

System.out.println("P1 hp:" + your_life + "       AI hp:"+ AI_life+ "    your score:"+score);

}

System.out.println("________________________________________________");

System.out.println("OOF!!");

System.out.println(":(>-<");

System.out.println("You died!");

System.out.print("game over!         Your score was:"+ score);

} }

class Weapons{

}

class p1 extends Weapons{

static int random_shot(int l) {

Random random=new Random();

int dis=(int) (Math.random()*30+7);

int shot1=random.nextInt(10);

int shot2=random.nextInt(3);

 int shot3=random.nextInt(2);

int shot4=random.nextInt(3);

System.out.print("(^-)");for(int d=1;d<=dis;d++) { System.out.print(' ');}System.out.println("(-*)");

 System.out.print("-+-> ----");for(int d=dis-5;d>0;d--) { System.out.print(' ');}System.out.println("<-+-");

System.out.print(" |  ");for(int d=dis;d>0;d--) { System.out.print(' ');}System.out.println("  | ");

System.out.print("/ \\ ");for(int d=dis;d>0;d--) { System.out.print(' ');}System.out.println(" / \\");

if(dis<20) {;return l;}

else{return shot1 + shot2 + shot3 + shot4;}

}

}

class p2 extends Weapons{

 static int random_shot(int l) {

Random random=new Random();

int dis=(int) (Math.random()*30+7);

int shot1=random.nextInt(2);

int shot2=random.nextInt(2);

int shot3=random.nextInt(3);

int shot4=random.nextInt(3);

 System.out.print("(^-)");for(int d=1;d<=dis;d++) { System.out.print(' ');}System.out.println("(-*)");

System.out.print("-+->");for(int d=dis-5;d>0;d--) { System.out.print(' ');}System.out.println("---- <-+-");

System.out.print(" |  ");for(int d=dis;d>0;d--) { System.out.print(' ');}System.out.println("  | ");

System.out.print("/ \\ ");for(int d=dis;d>0;d--) { System.out.print(' ');}System.out.println(" / \\");

if(dis>20) {;return l;}

else{return shot1 + shot2 + shot3 + shot4;}

}

}

