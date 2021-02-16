using System;
using System.Linq;
class Desafio2_7 {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        string[] placa = new string[n];
		for (i = 0; i < n; i++) {
			placa [i] = Console.ReadLine;
			if (ValidarP(placa[i]) == true){
				int v = int.Parse(placa[i].Substring(placa[i].Length -1));
				if (v == "1" || v == "2"){
                    Console.WriteLine ("SEGUNDA");
                }
                else if (v == "3" || v == "4"){
                    Console.WriteLine ("TERCA");
                }
                else if (v == "5" || v == "6"){
                    Console.WriteLine ("QUARTA");
                }
                else if (v == "7" || v == "8"){
                    Console.WriteLine ("QUINTA");
                }
                else if (v == "9" || v == "0"){
                    Console.WriteLine ("SEXTA");
                }else{
                    Console.WriteLine ("FALHA");
                }
			} else {
				Console.WriteLine ("FALHA");
			}
		}
	}
	
	
	public static bool ValidarP(string placa){
		string[] pl = placa.Split("-");
		if (pl.Length == 2) {
            string l = pl[0];
            string n = pl[1];
            if (l.Length == 3 && n.Length == 4) {
                if (l.All(char.IsLetter) && l.All(char.IsUpper) && n.All(char.IsDigit)) {
                    return true;
                } else {return false;}
            } else {return false;}
        } else {return false;}
    }
		






















}
