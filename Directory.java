/*
Write a program to create a directory that contains the following information.
(a) Name of a person
(b) Address
(c) Telephone Number (if available with STD code)
(d) Mobile Number (if available)
(e) Head of the family
(f) Unique ID No.
The program will support the following menu based activities:
(a) Create a database entry (The Unique ID number must be unique for every entry, the telephone numbers of two or more persons can be same if and only if the head of family is same)
(b) Edit an entry (Must be identified by only the Unique ID number)
(c) Search by keyword (Any keyword may not be complete; even if the keyword matches partially with any field, the corresponding information must be displayed)

*/

import java.util.ArrayList;

public class Directry {
    private String Name;
    private String Tel;
    private String phone;
    private String uid;
    private String address;
    private String HOF;

    public String getUid() {
        return uid;
    }

    public void setTel(String tel) {
        Tel = tel;
    }

    public void setName(String name) {
        Name = name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }



    public void setAddress(String address) {
        this.address = address;
    }

    public void setHOF(String HOF) {
        this.HOF = HOF;
    }

    public Directry(String name, String tel, String phone, String uid, String address, String HOF) {
        Name = name;
        Tel = tel;
        this.phone = phone;
        this.uid = uid;
        this.address = address;
        this.HOF = HOF;
    }
    public static boolean check(ArrayList<Directry> d1,String tf,String h,String id){
        for(int i=0;i<d1.size();i++){
            Directry d=d1.get(i);
            if(d.uid.compareToIgnoreCase(id)==0)
                return false;
            if((d.Tel.equals(tf)&&(!d.HOF.equals(h))))
                return false;
        }
        return true;
    }
    public static void search(ArrayList<Directry> d1, String key){
        for(int i=0;i<d1.size();i++){
            Directry d=d1.get(i);
            String s=d.address+d.HOF+d.Tel+d.Name+d.phone+d.uid;
        if(s.contains(key)==true){
            d.display();
        }

        }


    }
    public void display(){
        System.out.println(uid);
        System.out.println(Name);
        System.out.println(Tel);
        System.out.println(address);
        System.out.println(phone);
        System.out.println(HOF);
    }

}
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Scanner;


public class Main {
    public static void main(String[] args) throws IOException {
        ArrayList<Directry> d=new ArrayList<Directry>();
        int c;
        do {
            System.out.println("press 1 to add entry");
            System.out.println("press 2 to search");
            System.out.println("press 3 to Edit an entry");
            System.out.println("press 4 to exit");
System.out.println("press 5 to display details of all");
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
             c = Integer.parseInt(br.readLine());
          //  System.out.println();
            switch (c) {
                case 1:
                    String id = br.readLine();
                    String n = br.readLine();
                    String t = br.readLine();
                    String p = br.readLine();
                    String ad = br.readLine();
                    String h = br.readLine();
                    if (Directry.check(d, t, h, id) ) {
                        d.add(new Directry(n, t, p, id, ad, h));
                    } else
                        System.out.println("already exists");
                    break;
                case 2:
                    System.out.println("enter keyword");
                    String k = br.readLine();
                    Directry.search(d, k);
                    break;
                case 3:
                    System.out.println("enter uid");
                    String u = br.readLine();
                    for (int i = 0; i < d.size(); i++) {
                        Directry d1 = d.get(i);
                        if (d1.getUid().equals(u)) {
                            System.out.println("press 1 to update name");
                            System.out.println("press 2 to update telephone& head");
                            System.out.println("press 3 to update mobile");
                            System.out.println("press 4 to update address");
                            System.out.println("press 5 to update Head");
                            int N = Integer.parseInt(br.readLine());
                            switch (N) {
                                case 1:
                                    String nm = br.readLine();
                                    d1.setName(nm);
                                    d.set(i, d1);
                                    break;
                                case 2:
                                    String tl = br.readLine();
                                    String hh = br.readLine();
                                    d1.setHOF(hh);
                                    d1.setTel(tl);
                                    d.set(i, d1);
                                    break;
                                case 3:
                                    String mb = br.readLine();
                                    d1.setPhone(mb);
                                    d.set(i, d1);
                                    break;
                                case 4:
                                    String add = br.readLine();
                                    d1.setAddress(add);
                                    d.set(i, d1);
                                    break;


                            }
break;


                        }

                    }

                case 5:
                    for (int i = 0; i < d.size(); i++)
                        d.get(i).display();
                    break;

            }


        }while (c!=4);
        }
}
