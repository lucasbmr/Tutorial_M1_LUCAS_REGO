extends Node2D

#var para mostrar se coletavel foi coleatado
var coletou1 
var coletou2 
var coletou3 
var coletou4 
var coletou5 
var coletou6 

#var para mosatrar quando todos itens forem coletados
var coletados = false

func _ready():
	pass

#quando botao de iniciar jogo apos dialogo for pressionado apresentar controles e outras infos.
func _on_iniciar_pressed():
	$RichTextLabel/Timer.start()
	$iniciar.visible = false
	$controles.visible = true
	$RichTextLabel.visible = true
	$coletaveis.visible = true


#func de quando o jogador entra no coletavel.
func _on_coletavel_1_body_entered(body):
	if body.name =="Player":
		$coletaveis/coletavel_1.queue_free()
		$pont/Sprite.modulate = Color(1,1,1,1)
		coletou1 = 1
		print("coletou")

#func de quando o jogador entra no coletavel.
func _on_coletavel_2_body_entered(body):
	if body.name =="Player":
		$coletaveis/coletavel_2.queue_free()
		$pont/Sprite2.modulate = Color(1,1,1,1)
		coletou2 = 1
		print("coletou")


#func de quando o jogador entra no coletavel.
func _on_coletavel_3_body_entered(body):
	if body.name =="Player":
		$coletaveis/coletavel_3.queue_free()
		$pont/Sprite3.modulate = Color(1,1,1,1)
		coletou3 = 1
		print("coletou")


#func de quando o jogador entra no coletavel.
func _on_coletavel_4_body_entered(body):
	if body.name =="Player":
		$coletaveis/coletavel_4.queue_free()
		$pont/Sprite4.modulate = Color(1,1,1,1)
		coletou4 = 1
		print("coletou")


#func de quando o jogador entra no coletavel.
func _on_coletavel_5_body_entered(body):
	if body.name =="Player":
		$coletaveis/coletavel_5.queue_free()
		$pont/Sprite5.modulate = Color(1,1,1,1)
		coletou5 = 1
		print("coletou")


#func de quando o jogador entra no coletavel.
func _on_coletavel_6_body_entered(body):
	if body.name =="Player":
		$coletaveis/coletavel_6.queue_free()
		$pont/Sprite6.modulate = Color(1,1,1,1)
		coletou6 = 1
		print("coletou")
		
func _process(delta):
	#todos coletaveis coletados
	if coletou1 == 1 and coletou2 == 1 and coletou3 == 1 and coletou4 == 1 and coletou5 == 1 and coletou6 == 1:
		coletados = true

	#quando todos forem coletados mostrar botao fim
	if coletados == true: 
		get_tree().change_scene("res://cenas/final.tscn")
		print("voce ganhou")
		



#quando bot fim for clicado mostar dinaliização do jogo
func _on_botfim_pressed():
	get_tree().change_scene("res://cenas/final.tscn")
