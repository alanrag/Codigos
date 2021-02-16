//Como eu fiz
using System;

class Desafio1 {
    static void Main() {
        Console.WriteLine("Digite a quantidade de pares que deseja calcular.");
        int q = int.Parse(Console.ReadLine());
        for(int i =0; i < q ; i++){
            Console.WriteLine("Digite o dividendo");
            double n1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Digite o divisor");
            double n2 = int.Parse(Console.ReadLine());
            if (n2 == 0){
                Console.WriteLine("Está divisão não é possivel!");
            }else{
                double r = n1 / n2;
                Console.WriteLine("O resultado de "+n1+"/"+n2+" é:"+r.ToString("N1") );
			}
        }
        Console.ReadKey();
     
    }
}

// Como tinha que ser entregue 
/* using System;
class Desafio1 {
    static void Main() {
        {
            int q = Int32.Parse(Console.ReadLine());
            for(int i = 0; i < q; i++){
                var n = Console.ReadLine().Split(" ");
                var n1 = Int32.Parse(n[0]);
                var n2 = Int32.Parse(n[1]);
                if(n2 == 0){
                    Console.WriteLine("divisao impossivel");
                }else{
                    var r = (float)n1 / (float)n2;
                    Console.WriteLine(r.ToString("N1"));
                }
            }
        }
    }
}
*/