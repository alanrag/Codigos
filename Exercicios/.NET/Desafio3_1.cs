using System;
class Desafio3_1 {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        int [] v = new int [3];
        for (int i=1; i<=n; i++){
            int r = 1;
            for (int j=0; j<3; j++){
                r = i * r;
                v[j] = r;
            }
        foreach (int k in v){
            Console.Write("{0} ", k);
        }
        Console.Write("\n");
        }
    Console.ReadKey();
    }
}