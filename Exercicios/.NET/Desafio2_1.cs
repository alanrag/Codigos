using System;
class Desafio2_1 {
    static void Main() {
        double[] p = new double[9];
        var an = Console.ReadLine().Split(" ");
        int a = Int32.Parse(an[0]);
        int n = Int32.Parse(an[1]);
        while (a <= 1 || n >= 104){
            if (a <= 1){ 
                Console.Write("Vocês precisa dar mais do que 1 volta.");
                a = Int32.Parse(Console.ReadLine());
            }
            if (n >= 104){
                Console.Write("Vocês precisa contar menos do que 104 placas.");
                n = Int32.Parse(Console.ReadLine());
            }
        }
        double r = a*n;
        for (int i=1; i<=9; i++){
            p[i-1] = Math.Ceiling((r*i) /10);  
        }
        foreach (int k in p){
            Console.Write("{0} ", k);
        }
    }
}

/* Como foi entregue
using System;
class Desafio2_1 {
    static void Main() {
        string[] an = Console.ReadLine().Split(" ");
        int a = Int32.Parse(an[0]);
        int n = Int32.Parse(an[1]);
        double tp;
        double r = a*n*0.1;
        for (int i=1; i<=9; i++){
            tp = r * i;
            Console.Write(Math.Ceiling(tp) + " ");
        }
    }
}
*/