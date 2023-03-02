extends Node2D

var teste = false
var valor = 0
var numero = 0#possuia um acento, acentos não são permitidos em comandos que não sejam comentários.
var lista = [] #"lista" não estava declarada como variável.
var nome = "" #var da linha 13 


func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Acento na variável e linkar o linedit.
	nome = $LineEdit.text 	# var "nome" não estava declarada e deve estar na frene do $LineEdit.
	print(numero)

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i # "numero" estava com primeira letra em maíuscula, diferente da var declarada.
		lista.append(numero) # "numero" estava com primeira letra em maíuscula, diferente da var declarada.
	$Label.text = String(numero) # declarar como string para o label
	print(lista)

func _on_Button3_pressed():
	#a variável i não estava declada 
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#while(len(lista)):
	var cont
	cont=0
	for i in lista:
#for se encaixa melhor para a função que estamos tentando criar
		#i=0
		print(i)
		if(lista[cont]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+" baldo"
			$Label2.text = nome
			return
