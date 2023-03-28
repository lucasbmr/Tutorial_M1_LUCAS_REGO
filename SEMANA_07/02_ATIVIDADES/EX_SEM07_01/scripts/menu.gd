extends Node2D





func _ready():
	pass # Replace with function body.



#func _process(delta):
#	pass


# quando bot jogar for pressionado mudar para cena da fase.
func _on_bot_jogar_pressed():
	get_tree().change_scene("res://cenas/fase_1.tscn")

#quando bot sobre nos for pressionado ir para tela de apresentaçao do jogo.
func _on_bot_sobre_pressed():
	get_tree().change_scene("res://cenas/sobre.tscn")
