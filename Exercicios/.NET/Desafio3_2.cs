using System;
class Desafio3_2 {
    static void Main() {
        int tr =0;
        int t = 0;
        try{
            for (int j=0; j<100; j++){
                int n = int.Parse(Console.ReadLine());
                string[] tar = Console.ReadLine().Split(" ");
                for (int i=0; i<n; i++){
                    t = int.Parse(tar[i]);
                    if (t>tr){
                     tr = t;
                    } 
                }
                if (tr<10){
                 Console.WriteLine("1");
                }else if (tr>=10 && tr<20){
                 Console.WriteLine("2");
                }else if (tr >= 20) {
                 Console.WriteLine("3");
                }
                tr=0;
            }
        }catch (System.ArgumentNullException){
        }catch (System.FormatException){
        }
    }
}