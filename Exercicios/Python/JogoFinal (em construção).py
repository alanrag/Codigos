

import sys    #biblioteca para usar o comando sys.exit() (linha 164)
import cmd
import random
import time
from pprint import pprint

#Classes
class jogador:
    def __init__(self, Jnome, Jvida, Jataque, Jdefesa):  # 'J' de jogador, então fica Jogador nome
        self.nome = Jnome
        self.vida = Jvida
        self.ataque = Jataque
        self.defesa = Jdefesa


class itens:
    def __init__(self, ataque, durabilidade, nome):
        self.ataque = ataque
        self.durabilidade = durabilidade
        self.nome = nome


class inimigo:
    def __init__(self, inome, ivida=50, iataque=50):
        self.nome = inome
        self.vida = ivida
        self.ataque = iataque


class boss(inimigo):
    def buff(self):
        self.vida= self.vida + 50
        self.ataque= self.ataque + 50
#FimClasses

#Métodos
def separar():
    print('=' * 120)


def geradorNomeI():  # ler o arquivo texto 'palavras.txt' e escolher uma palavra aleatória
    temp = []
    file = open('palavras.txt', 'r')
    lines = file.readlines()
    palavras = lines[random.randint(0, len(lines) - 1)][:-1]
    file.close
    file = open('undead.txt', 'r')
    lines = file.readlines()
    undead = lines[random.randint(0, len(lines) - 1)][:-1]
    file.close
    nome = undead + ' ' + palavras
    return (nome)


def tipoI(n):    # Método para definir se o inimigo será um boss ou não
    nomeI = geradorNomeI()
    if n == 4:
        i = boss(nomeI)
        i.buff()
    else:
        i = inimigo(nomeI)
    return(i)


def criarpersonagem():
    global x
    x = input('Escolha uma classe. Druida(1),Bruxo(2),Guerreiro(3)')
    while x != '1' and x != '2' and x != '3':
        print('Você precisa escolher umas das 3 classes!')
        x = input('Escolha uma classe: Druida(1),Bruxo(2),Guerreiro(3):   ')
    if x == '1':
        Jogadorvida = 70
        Jogadorataque = 150
        Jogadordefesa = 70

    elif x == '2':
        Jogadorvida = 50
        Jogadorataque = 80
        Jogadordefesa = 120

    elif x == '3':
        Jogadorvida = 100
        Jogadorataque = 120
        Jogadordefesa = 50

    Jogadornome = input('Digite o nome do personagem: ')
    #print('Seu nome é ', Jogadornome, ', você tem ', Jogadorataque, 'de ataque, ', Jogadordefesa, 'de defesa e',
     #     Jogadorvida, 'de vida.')
    return (Jogadornome, Jogadorvida, Jogadorataque, Jogadordefesa)


def pitem():  # pitem = primeiro item
    if x == '1':
        arma = 3
        while arma != '1' and arma != '2':
            print('Escolha entre esses cajados: ')
            arma = input('(1) Cajado Da Luz ATQ+30 DUR+40 // (2)Cajado Das Trevas ATQ+40 DUR+30:  ')
            if arma == '1':
              #  print('Você escolheu o Cajado da Luz!')
                w = 'Cajado Da Luz'
                atq = 30
                d = 40
            elif arma == '2':
              #  print('Você escolheu o Cajado das Trevas!')
                w = 'Cajado Da Trevas'
                atq = 40
                d = 30
            else:
                print('Escolha uma arma!!')
    elif x == '2':
        arma = 3
        while arma != '1' and arma != '2':
            print('Escolha entre esses varinha: ')
            arma = input('(1) Varinha Da Luz ATQ+30 DUR+40 // (2) Varinha Das Trevas ATQ+40 DUR+30:  ')
            if arma == '1':
               # print('Você escolheu a Varinha da Luz!')
                w = 'Varinha da Luz'
                atq = 30
                d = 40
            elif arma == '2':
               # print('Você escolheu a Varinha das Trevas!')
                w = 'Varinha das Trevas'
                atq = 40
                d = 30
            else:
                print('Escolha uma das armas!!!')
    elif x == '3':
        arma = 3
        while arma != '1' and arma != '2':
            print('Escolha entre esses espada: ')
            arma = input('(1) Espada Da Luz ATQ+30 DUR+40 // (2) Espada Das Trevas ATQ+40 DUR+30:  ')
            if arma == '1':
               # print('Você escolheu a Espada da Luz!')
                w = 'Espada da Luz'
                atq = 30
                d = 40
            elif arma == '2':
               # print('Você escolheu a Espada das Trevas!')
                w = 'Espada das Trevas'
                atq = 40
                d = 30
            else:
                print('Escolha uma arma!!')
    return (atq, d, w)
#FimMétodos



#Programa Principal
try: #exceção
    s = input('Pressione 1 para começar!')
    if s == '1':
        print('O jogo vai iniciar em 5 segundos!\n\n\n\n\n')
    else:
        print(c)
except:
    print('Tenha um ótimo dia!')
    sys.exit()

print('Carregando... \n\n\n\n\n')
time.sleep(5)
print('Batalha do Templo da Lua')

separar()

print("Bem vindo ao Templo da Lua")
print('Há mais ou menos 12 mil anos, quando os primeiros ancestrais elfos descobriram a magia da cura, a vida no do planeta Shatrah mudou para sempre.')
print('Seus inimigos,os Trolls, foram traídos por seu rei, Quelluci, e seu povo foi corrompido pelas magias mais obscuras.')
print('Desde então, o Templo da Lua virou um campo de batalha.')

separar()

# Propriedades do jogador:
# jogador terá propriedades como vida, sorte, ataque, magia,defesa e alcance(caso ele seja um bruxo ou mago, o alcance do dano dele será maior)
# existem 3  classes principais: a clase so jogador, a classe inimigo e a classe ítens. O jogador poderá escolher propriedades como facção, raça e classe.

separar()
print ('Crie os seus 3 personagens!')
time.sleep(1)
separar()
## Crianção do primeiro personagem
personagem = criarpersonagem()
a=pitem() #a = arma
p1=jogador(personagem[0],personagem[1], personagem[2], personagem[3])
item1=itens(a[0], a[1], a[2])

separar()
## Crianção do segundo personagem
personagem = criarpersonagem()
a=pitem() #a = arma
p2=jogador(personagem[0],personagem[1], personagem[2], personagem[3])
item2=itens(a[0], a[1], a[2])

separar()
## Crianção do terceiro personagem
personagem = criarpersonagem()
a=pitem() #a = arma
p3=jogador(personagem[0],personagem[1], personagem[2], personagem[3])
item3=itens(a[0], a[1], a[2])
# Fim de criação de personagens
separar()

#print('Personagem 1:',p1.nome, '(ATQ =', p1.ataque + item1.ataque,'DEF =', p1.defesa, 'HP', p1.vida, ')')
#print('Personagem 2:',p2.nome, '(ATQ =', p2.ataque + item2.ataque,'DEF =', p2.defesa, 'HP', p2.vida, ')')
#print('Personagem 3:',p3.nome, '(ATQ =', p3.ataque + item3.ataque,'DEF =', p3.defesa, 'HP', p3.vida, ')')

#personagem = criarpersonagem() Return da criação de personagem
#p2=jogador(personagem[0],personagem[1], personagem[2], personagem[3]) criando o objeto do personagem 2
#personagem = criarpersonagem() //
#p3=jogador(personagem[0],personagem[1], personagem[2], personagem[3]) criando o objeto do personagem 3
#print('Nome:', p1.nome,'ATQ', p1.ataque, 'DEF', p1.defesa, 'HP', p1.vida) printando o objeto personagem 1
#print('Nome:', p2.nome,'ATQ', p2.ataque, 'DEF', p2.defesa, 'HP', p2.vida)       -//-         personagem 2
#print('Nome:', p3.nome,'ATQ', p3.ataque, 'DEF', p3.defesa, 'HP', p3.vida)       -//-         personagem 3
#a=pitem() #a = arma             criando a Tupla com o return do método pitem
#item2=itens(a[0], a[1], a[2]) criando o objeto item 2
#a=pitem() #a = arma //
#item3=itens(a[0], a[1], a[2]) criando o objeto item 3
#print(item1.ataque, item1.durabilidade, item1.nome) printando o item 1
#print(item2.ataque, item2.durabilidade, item2.nome)   -//-    o item 2
#print(item3.ataque, item3.durabilidade, item3.nome)   -//-    o item 3

time.sleep(4)
print('Os aventureiros', p1.nome,',', p2.nome,'e', p3.nome, 'chegaram no templo da lua!')
time.sleep(4)
print('Mas... Ao entrar no templo escuro, eles se depararam com 5 inimigos !!!')

#Gerando inimigo 1
time.sleep(3)
t=random.randint(0,4) #20% de chance do inimigo ser um boss
mob1=tipoI(t)
if mob1.vida == 100:
    print(mob1.nome, '                                   \033[31mCuidado, este inimigo parece ser mais forte do que o normal!\033[m')
else:
    print(mob1.nome)
#Gerando inimigo 2
time.sleep(3)
t=random.randint(0,4) #20% de chance do inimigo ser um boss
mob2=tipoI(t)
if mob2.vida == 100:
    print(mob2.nome, '                                   \033[31mCuidado, este inimigo parece ser mais forte do que o normal!\033[m')
else:
    print(mob2.nome)
#Gerando inimigo 3
time.sleep(3)
t=random.randint(0,4) #20% de chance do inimigo ser um boss
mob3=tipoI(t)
if mob3.vida == 100:
    print(mob3.nome, '                                   \033[31mCuidado, este inimigo parece ser mais forte do que o normal!\033[m')
else:
    print(mob3.nome)
# Gerando inimigo 4
time.sleep(3)
t = random.randint(0, 4)  # 20% de chance do inimigo ser um boss
mob4 = tipoI(t)
if mob4.vida == 100:
    print(mob4.nome, '                                    \033[31mCuidado, este inimigo parece ser mais forte do que o normal!\033[m')
else:
    print(mob4.nome)
# Gerando inimigo 5
time.sleep(3)
t = random.randint(0, 4)  # 20% de chance do inimigo ser um boss
mob5 = tipoI(t)
if mob5.vida == 100:
    print(mob5.nome, '                                    \033[31mCuidado, este inimigo parece ser mais forte do que o normal!\033[m')
else:
    print(mob5.nome)

time.sleep(5)
print('E começou uma grande batalha !')
time.sleep(4)
iataquetotal = mob1.ataque + mob2.ataque + mob3.ataque + mob4.ataque + mob5.ataque  #Ataque total dos inimigos
ividatotal = mob1.vida + mob2.vida + mob3.vida + mob4.vida + mob5.vida              #Vida total dos personagens
jataquetotal = p1.ataque + p2.ataque + p3.ataque                                    #Ataque total dos personagens
jvidatotal = p1.vida + p2.vida + p3.vida                                            #Vida total dos personagens
jdefesatotal=(p1.defesa + p2.defesa + p3.defesa)/10                                 #10% da defesa total
#print(iataquetotal, ividatotal)   Teste para ver se os atributos do inimigos estavam corretos
#print(jataquetotal, jvidatotal)   Teste para ver se os atributos do jogador estavam corretos

while ividatotal >= 1 or jvidatotal >= 1:
    ividatotal = ividatotal - jataquetotal   #EX:  500-300= 200      /  Não     300-500= -200
    jvidatotal = jvidatotal + jdefesatotal - iataquetotal
if ividatotal > jvidatotal:
    print('A sua equipe lutou bravamente, mas infeliz não foi capaz de conquistar o templo da lua!')
elif ividatotal == jvidatotal:
    print ('Ambas as equipes lutaram bravamente, mas não restou sobreviventes de nenhum lado!')
else:
    print('Depois de uma árdua batalha, a sua equipe dominou o templo da lua e conquistou todos os seus tesouros!')


#mob2=random.randint(0,3)
#nomeI=geradorNomeI()    #método aparecer inimigo
#mob1=inimigo(nomeI)
#nomeI=geradorNomeI()
#mob2=boss(nomeI)
#mob2.buff()
#print(mob2.nome, mob2.ataque, mob2.vida)