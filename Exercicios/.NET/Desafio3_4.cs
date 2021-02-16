using System;
class Desafio3_4 {
    static void Main() {
        double [] r = new double[2];
        int v=0;
        while (v<2){
            r[v] = double.Parse(Console.ReadLine());
            if (r[v]>=0 && r[v]<=10){
                v++;
            }else{
                Console.WriteLine("nota invalida");
            }
        }
        double t=(r[0]+r[1])/2;
        Console.WriteLine("media = "+t.ToString("N2"));
    }  
}