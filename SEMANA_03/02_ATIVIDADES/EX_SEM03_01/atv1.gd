extends Node2D


var lista = [1,2,3,4,5]



func _on_botlista_pressed():
	$ColorRect/listaprint.text = "Sua lista é: " + String(lista)
	


func _on_proximaetapa_pressed():
	get_tree().change_scene("res://cenas/atv2.tscn")
