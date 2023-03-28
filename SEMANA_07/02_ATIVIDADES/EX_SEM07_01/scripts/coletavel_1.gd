extends Area2D


#quando jogador entrar na area item desaparece.
func _on_coletavel_1_body_entered(body):
	if body.name =="Player":
		queue_free()
		$Sprite.modulate = Color(1,1,1,1)
		print("coletou")
	
