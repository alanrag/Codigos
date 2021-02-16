using System;
using System.Collections.Generic;
using System.Linq;

class Program {

  static void Main() {
    var joias = new List<string>();;
    while(true)
    {
      string joia = Console.ReadLine();
      if (!string.IsNullOrWhiteSpace(joia)){
        joias.Add(joia);
      }else{
          break;
      }
    }
    var dif= joias.Distinct().ToList();
    Console.WriteLine(dif.Count);
  }
}