extends Node2D

var frase

func _on_botfrase_pressed():
	$ColorRect/frase.text = "Aqui esta seu texto para o exercicio 3."
	


func _on_proximaetapa3_pressed():
	get_tree().change_scene("res://cenas/atv4.tscn")
