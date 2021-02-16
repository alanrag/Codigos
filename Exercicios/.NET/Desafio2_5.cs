using System;

class Desafio2_5 {
  public static void Main (string[] args) {
    var idadeEmDias = int.Parse(Console.ReadLine());
    var anos = idadeEmDias / 365;
    var meses = (idadeEmDias % 365) / 30; 
    idadeEmDias =  (idadeEmDias % 365) % 30; 
    Console.WriteLine($"{anos} ano(s)\n{meses} mes(es)\n{idadeEmDias} dia(s)");
  }
}