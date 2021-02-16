using System;
class Desafio2_6 {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        string[] ab = Console.ReadLine().Split(" ");
        int a = Int32.Parse(ab[0]);
        int b = Int32.Parse(ab[1]);
        if (a+b <= n){
           Console.WriteLine("Farei hoje!"); 

        }else{
            Console.WriteLine("Deixa para amanha!");
        }

    }  
}