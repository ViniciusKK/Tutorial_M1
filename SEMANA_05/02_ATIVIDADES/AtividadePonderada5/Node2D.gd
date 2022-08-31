extends Node2D

var teste = false
var valor = 0
var numero = 0 #não tem acento
var lista = []
var nome = "vinicius"

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #não tem acento e tem que ter '$'

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		lista.append(numero)
		numero=numero+1 #somar 1 e não i
		$ColorRect/Label.text += str(lista[i])+"\n" # += e faltou identação


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in range(len(lista)): #faltou condição e incremento no laço
		if(lista[i]%2==1): #verifição da paridade 
			$ColorRect2/Label.text+=str(nome)+"baldo"+"\n" # '+='
		else:
			$ColorRect2/Label.text+=str(nome)+"\n"
