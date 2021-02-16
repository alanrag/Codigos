using System;
class Desafio3_3 {
    static void Main() {
        int v = 0, t= 1, total=0;
        int r = int.Parse(Console.ReadLine());
        total=r;
        do{
            v = int.Parse(Console.ReadLine());

        } while (v<r);
        while(total <= v){
           total= (r+t) + total;
           t++;
        }
        Console.WriteLine(t); 
    }  
}