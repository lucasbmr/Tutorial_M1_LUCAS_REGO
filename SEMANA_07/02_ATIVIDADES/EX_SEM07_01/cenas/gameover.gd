extends Node2D



#botão replay pressionado retonrna para menu principal
func _on_replay_pressed():
	get_tree().change_scene("res://cenas/menu.tscn")
