using System;
class Desafio3_5 {
    static void Main() {
        int s=0, j, index=0, c=0;
        string v;
        string [] joias= new string[106];
        try{
            for (int i=0; i<106; i++){
               v = Console.ReadLine();
               for (j=0; j<=index; j++){
                   s = String.Compare(v, joias[j]);
                   if (s == 0){
                       break;
                   }
                 if ( s != 0){
                     joias[index]=v;
                     index++;
                 }
                 Console.WriteLine(index);
                 Console.WriteLine(joias[index]);
             

               }



            }
        }catch (System.ArgumentNullException){
        //}catch (System.FormatException){
        }

    }
}