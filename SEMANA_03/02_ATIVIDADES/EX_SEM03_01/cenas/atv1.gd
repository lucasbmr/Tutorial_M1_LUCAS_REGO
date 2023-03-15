extends Node2D

# Declarando a lista a ser printada.
var lista = [1,2,3,4,5]


# Função para quando botão for pressionado, lista ser printada.
func _on_botlista_pressed():
	$ColorRect/listaprint.text = "Sua lista é: " + String(lista)
	

# Função para quando botão for pressionado, ir para tela do próximo exercicio.
func _on_proximaetapa_pressed():
	get_tree().change_scene("res://cenas/atv2.tscn")
