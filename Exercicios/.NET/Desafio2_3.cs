using System;
class Desafio2_3 {
    static void Main() {
        string[] nd = Console.ReadLine().Split(" ");
        int N = Int32.Parse(nd[0]);
        int D = Int32.Parse(nd[1]);
        string data=" ";
        int dc= 0;
        int k=0;
        for (int i=0; i<D; i++){
            string[] lista = Console.ReadLine().Split(" ");
            for (int j=1; j<=N; j++){
                if (Int32.Parse(lista[j]) == 1){
                    dc ++;
                }
            }
            if (dc==N && k==0){
                data = lista[0];
                k ++;
            } else {
                dc=0;
            }
        }
        if (k==0){
            Console.WriteLine("Pizza antes de FdA");
        } else {
            Console.WriteLine(data);
        }
    Console.ReadKey();
    }
}