extends Node2D

# Declarando uma lista vazia.
var numeros = []

# Função para quando botão for pressionado.
func _on_botlista_pressed():
	# Numerosinseridos no LineEdit são inseridos se tornam string para lista.
	var numeros_str = $numlista.text
	if numeros_str == null:
		return
	# Lista divide numros quando barra de espaço é pressionada
	var numeros_list = numeros_str.split(" ")
	#"for" para inserir estes valores na lista.
	for numero in numeros_list:
		numeros.append(float(numero))
	
	#Mostrar a lista criada na tela.
	$ColorRect/listaprint2.text = "Sua lista é: " + String(numeros)
	
	print(numeros)
	numeros.clear()

#Quando botão pressionado mudar para proximo exercicio.
func _on_proximaetapa2_pressed():
	get_tree().change_scene("res://cenas/atv3.tscn")
