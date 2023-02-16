extends Node2D


var numeros = []

func _on_botlista_pressed():
	var numeros_str = $numlista.text
	if numeros_str == null:
		return
	
	var numeros_list = numeros_str.split(" ")
	for numero in numeros_list:
		numeros.append(float(numero))
	
	$ColorRect/listaprint2.text = "Sua lista é: " + String(numeros)
	
	print(numeros)
	numeros.clear()

func _on_proximaetapa2_pressed():
	get_tree().change_scene("res://cenas/atv3.tscn")
