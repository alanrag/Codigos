using System;
class Desafio2_2 {
    static void Main() {
        int Ca, Ba, Pa;
        int Cr, Br, Pr;
        string[] aa = Console.ReadLine().Split(" ");
        Ca = Int32.Parse(aa[0]);
        Ba = Int32.Parse(aa[1]);
        Pa = Int32.Parse(aa[2]);
        string[] ar = Console.ReadLine().Split(" ");
        Cr = Int32.Parse(ar[0]);
        Br = Int32.Parse(ar[1]);
        Pr = Int32.Parse(ar[2]);
        int C= Ca - Cr;
        int B= Ba - Br;
        int P= Pa - Pr;
        if (C>0){
            C=0;
        }
         if (B>0){
            B=0;
        }
         if (P>0){
            P=0;
        }
        int t= (P+C+B)*-1;
        Console.Write(t);  
    }
}