Sub Urna()
	Dim c1 As Integer, c2 As Integer, c3 As Integer, b As Integer, n As Integer, v As Integer

	MsgBox "1 = CanditatoUm / 2 = CanditatoDois / 3 = CanditatoTres / 4 = Branco / 0 = Final"
	v = InputBox("Digite o seu voto...")

	Do While (v <> 0)

		Select Case (v)
			Case 1
				c1 = c1 + 1
			Case 2
				c2 = c2 + 1
			Case 3
				c3 = c3 + 1
			Case 4
				b = b + 1
			Case Else
				n = n + 1
		End Select

	v = InputBox("Digite o seu voto...  ")
	Loop

	MsgBox "Resultado final"
	MsgBox "CandidatoUm: " & c1
	MsgBox "CandidatoDois: " & c2
	MsgBox "CandidatoTres: " & c3
	MsgBox "Votos em Branco: " & b
	MsgBox "Votos Nulos: " & n
End Sub