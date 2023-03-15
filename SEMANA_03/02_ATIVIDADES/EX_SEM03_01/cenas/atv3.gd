extends Node2D

# Declarar a frase a ser printada.
var frase

#Funcao de texto a ser impresso
func retornetexto():
	$ColorRect/frase.text = "Aqui esta seu texto para o exercicio 3."

# Quando botão for pressionado cahamr fncao de retornar texto.
func _on_botfrase_pressed():
	retornetexto()


# Quando botão for pressionado ir para proximo exercicio.
func _on_proximaetapa3_pressed():
	get_tree().change_scene("res://cenas/atv4.tscn")
