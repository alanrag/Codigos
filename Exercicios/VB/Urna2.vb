Sub Urna()
    Dim g1 As Integer, g2 As Integer, g3 As Integer, c1 As Integer, c2 As Integer, c3 As Integer, n As Integer, v As Integer, i As Integer, j As Integer

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

    MsgBox "Votação encerrada!"
    MsgBox "Votos em Branco: " & b
    MsgBox "Votos Nulos: " & n
    MsgBox "CandidatoUm: " & c1
    MsgBox "CandidatoDois: " & c2
    MsgBox "CandidatoTres: " & c3
    g1 = c1
    g2 = c2
    g3 = c3
    If (c2 >= c1) Then
        g1 = c2
        g2 = c1
        If (c3 >= c2) Then
            g1 = c3
            g2 = c2
            g3 = c1
        ElseIf (c3 >= c1) Then
            g1 = c2
            g2 = c3
            g3 = c1
        End If
    ElseIf (c2 <= c3) Then
        g3 = c2
        g2 = c3
        If (c3 >= c1) Then
            g1 = c3
            g2 = c1
            g3 = c3
        End If
    End If
End Sub