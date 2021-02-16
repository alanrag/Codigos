using System;
class Desafio2_4 {
    static void Main() {
        int s = int.Parse(Console.ReadLine());
        int h= s/3600;
        s=s%600;
        int m= s/60;
        s=s%60;
        Console.Write(h+":"+m+":"+s);
    }  
}


/* Como eu entreguei
using System;
class Desafio2_4 {
    static void Main() {
        int s = int.Parse(Console.ReadLine());
        int h = s / 3600;
        int m = (s % 3600) / 60;
        s = s % 60;
        Console.Write(string.Format("{0:D1}:{1:D1}:{2:D1}", h, m, s));
    }  
}
*/