extends Node2D



func _on_iniciar_pressed():
	$RichTextLabel/Timer.start()
	$iniciar.visible = false
	$controles.visible = true
	$RichTextLabel.visible = true
